cask "mixin" do
  version "3.0.3"
  sha256 "7c891ba1714d287048a687a3ca907adb898113103686ab44c0ec68c1fd89747b"

  url "https://github.com/MixinNetwork/flutter-app/releases/download/v#{version}/mixin-#{version}.dmg",
      verified: "github.com/MixinNetwork/flutter-app/"
  name "Mixin Messenger Desktop"
  desc "Cryptocurrency wallet"
  homepage "https://messenger.mixin.one/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^mixin[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Mixin.app"

  zap trash: [
    "~/Library/Application Scripts/one.mixin.messenger.desktop",
    "~/Library/Application Support/one.mixin.messenger.desktop",
    "~/Library/Containers/one.mixin.messenger.desktop",
    "~/Library/Saved Application State/one.mixin.messenger.desktop.savedState",
  ]
end
