class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.10.1/ipsw_18.10.1_macOS_amd64.tar.gz"
  version "18.10.1"
  sha256 "4c33f2d6a5d69641df7d50b11120ac671019e06f50cf4335a08d61de27f47e6c"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
