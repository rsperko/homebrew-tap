cask "keyscribe" do
  version "0.3.0"
  sha256 "c35d9b739a35ae4d941f24fdd447aa501e3d330012f56c3b3c5c3128157cb85f"

  url "https://github.com/rsperko/keyscribe/releases/download/v#{version}/KeyScribe-#{version}.dmg"
  name "KeyScribe"
  desc "Privacy-first, local-first voice dictation for macOS"
  homepage "https://github.com/rsperko/keyscribe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  auto_updates true

  app "KeyScribe.app"

  zap trash: [
    "~/Library/Application Support/KeyScribe",
    "~/Library/Preferences/com.keyscribe.app.plist",
  ]
end
