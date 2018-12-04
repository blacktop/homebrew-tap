class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.12.4/ipsw_18.12.4_macOS_amd64.tar.gz"
  version "18.12.4"
  sha256 "37d2c9fe43e95483c2d786823f37d12c55e062d7af51f2ba49aac0b5046b4204"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
