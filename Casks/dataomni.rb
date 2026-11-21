cask "dataomni" do
  version "1.3.0"
  sha256 "8f3b00c264d298267ac0e62b19b64785224e50598faf8407188fb395819ca258"

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
