# Written by redcrab's scripts/homebrew.sh for each release; edit it there.
cask "redcrab" do
  version "0.4.2"
  sha256 "f90fb5e4837a3aa992a28afc42703b59adc00bdd855a42ba0b0852e82450cd2b"

  url "https://github.com/muratmirgun/redcrab/releases/download/v#{version}/redcrab-#{version}-macos-universal.dmg"
  name "redcrab"
  desc "Fast native Redis and Valkey client"
  homepage "https://github.com/muratmirgun/redcrab"

  livecheck do
    url :url
    strategy :github_latest
  end

  # It asks before installing a new release, checked against its own key.
  auto_updates true
  depends_on :macos

  app "redcrab.app"

  zap trash: [
    "~/Library/Application Support/redcrab",
    "~/Library/Preferences/io.github.muratmirgun.redcrab.plist",
  ]

  caveats <<~EOS
    redcrab is not notarized yet, so macOS stops it the first time it opens.
    Open it once, then choose Open Anyway in System Settings > Privacy & Security,
    or run:
      xattr -dr com.apple.quarantine /Applications/redcrab.app
  EOS
end
