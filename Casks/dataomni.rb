cask "dataomni" do
  version "1.2.1"
  sha256 "e230842d1956491e7c679f739e950215d7ebb772b846d270bfa8be77688973df"

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
