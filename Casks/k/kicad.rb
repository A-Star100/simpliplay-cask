cask "kicad" do
  version "9.0.2"
  sha256 "4c5e28dd755c86a02f7934682d6ff1797c1c098079c599d5092dd285768c848e"

  url "https://github.com/KiCad/kicad-source-mirror/releases/download/#{version}/kicad-unified-universal-#{version}.dmg",
      verified: "github.com/KiCad/kicad-source-mirror/"
  name "KiCad"
  desc "Electronics design automation suite"
  homepage "https://kicad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  suite "KiCad"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/dxf2idf"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idf2vrml"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idfcyl"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/idfrect"
  binary "#{appdir}/KiCad/KiCad.app/Contents/MacOS/kicad-cli"
  artifact "demos", target: "/Library/Application Support/kicad/demos"

  zap delete: "/Library/Application Support/kicad",
      trash:  [
        "~/Library/Application Support/kicad",
        "~/Library/Preferences/kicad",
        "~/Library/Preferences/org.kicad-pcb.*",
        "~/Library/Saved Application State/org.kicad-pcb.*",
      ]
end
