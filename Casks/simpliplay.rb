cask "simpliplay" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "855e58125e71c9c9ad21b683e7925b8667586c9644e6361b5f261acf7ad9a050",
         intel: "70a55cb7a226e486aa139cba0705593d190eb5371f66611c2c6dec1ccb183d71"

  url "https://github.com/A-Star100/simpliplay-desktop/releases/download/release-1.0.7.2/SimpliPlay-#{arch}-darwin.dmg"

  name "SimpliPlay"
  homepage "https://simpliplay.netlify.app"

  app "SimpliPlay.app"
end
