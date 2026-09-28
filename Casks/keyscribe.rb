cask "keyscribe" do
  version "0.8.0"
  sha256 "a1f1e1cff68a5a1d54239752e64aa5ed671cb32034683847c8149e4fe0c38490"

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
