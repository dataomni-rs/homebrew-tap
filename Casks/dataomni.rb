cask "dataomni" do
  version "1.2.2"
  sha256 "2a2021440eed3c4e2c029d9723ecf7a5d85ce05b2c9089d3a2b9fa385684167d"

  url "https://github.com/dataomni-rs/DataOmni/releases/download/v#{version}/DataOmni_#{version}_aarch64.dmg"
  name "DataOmni"
  desc "Desktop client for SQL databases, MongoDB, Redis, Neo4j, and Elasticsearch"
  homepage "https://dataomni.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "DataOmni.app"
  binary "#{appdir}/DataOmni.app/Contents/MacOS/dataomni"

  zap trash: [
    "~/Library/Application Support/com.dataomni.app",
    "~/Library/Caches/com.dataomni.app",
    "~/Library/Logs/com.dataomni.app",
    "~/Library/Preferences/com.dataomni.app.plist",
    "~/Library/Saved Application State/com.dataomni.app.savedState",
    "~/Library/WebKit/com.dataomni.app",
  ]
end
