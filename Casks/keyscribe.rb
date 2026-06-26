cask "keyscribe" do
  version "0.1.5"
  sha256 "5e2c331f5bd4d4eaf0706930f45a3babb2bce09e264fa567ae54df42912ef269"

  url "https://github.com/rsperko/keyscribe/releases/download/v#{version}/KeyScribe-#{version}.dmg"
  name "KeyScribe"
  desc "Privacy-first, local-first voice dictation for macOS"
  homepage "https://github.com/rsperko/keyscribe"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "KeyScribe.app"

  zap trash: [
    "~/Library/Application Support/KeyScribe",
    "~/Library/Preferences/com.keyscribe.app.plist",
  ]
end
