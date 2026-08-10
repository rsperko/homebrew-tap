cask "keyscribe" do
  version "0.4.0"
  sha256 "7465fc4bb7e0fd31f26d589f1affb033553842c0738d4be9657048226a0b71a1"

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
