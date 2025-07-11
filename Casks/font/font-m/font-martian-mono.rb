cask "font-martian-mono" do
  version "1.1.0"
  sha256 "2570b4fd6da9d641a6385f092167a21707448274d5b87cd85244411d868d3a80"

  url "https://github.com/evilmartians/mono/releases/download/v#{version}/martian-mono-#{version}-otf.zip"
  name "Martian Mono"
  homepage "https://github.com/evilmartians/mono"

  no_autobump! because: :requires_manual_review

  font "MartianMono-CnBd.otf"
  font "MartianMono-CnLt.otf"
  font "MartianMono-CnMd.otf"
  font "MartianMono-CnRg.otf"
  font "MartianMono-CnTh.otf"
  font "MartianMono-CnxBd.otf"
  font "MartianMono-CnxLt.otf"
  font "MartianMono-NrBd.otf"
  font "MartianMono-NrLt.otf"
  font "MartianMono-NrMd.otf"
  font "MartianMono-NrRg.otf"
  font "MartianMono-NrTh.otf"
  font "MartianMono-NrxBd.otf"
  font "MartianMono-NrxLt.otf"
  font "MartianMono-StdBd.otf"
  font "MartianMono-StdLt.otf"
  font "MartianMono-StdMd.otf"
  font "MartianMono-StdRg.otf"
  font "MartianMono-StdTh.otf"
  font "MartianMono-StdxBd.otf"
  font "MartianMono-StdxLt.otf"
  font "MartianMono-sWdBd.otf"
  font "MartianMono-sWdLt.otf"
  font "MartianMono-sWdMd.otf"
  font "MartianMono-sWdRg.otf"
  font "MartianMono-sWdTh.otf"
  font "MartianMono-sWdxBd.otf"
  font "MartianMono-sWdxLt.otf"

  # No zap stanza required
end
