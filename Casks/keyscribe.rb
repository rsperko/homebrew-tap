cask "keyscribe" do
  version "0.5.1"
  sha256 "30a7b7c53b640f47ed8b5235848ac55548c7433ca2c29a5b5d7b37b56eaee772"

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
