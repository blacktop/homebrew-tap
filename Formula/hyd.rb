class Hyd < Formula
  desc ""
  homepage ""
  url "https://github.com/blacktop/how-ya-doing/releases/download/0.1.0/hyd_macOS_amd64.tar.gz"
  version "0.1.0"
  sha256 "772073dc7d1b8c13f40025ca30a3bb2258e390ef6e7abd657e496f5c94f8ac48"

  def install
    bin.install "hyd"
  end
end
