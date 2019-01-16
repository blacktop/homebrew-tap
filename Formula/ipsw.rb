class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.12.6/ipsw_18.12.6_macOS_amd64.tar.gz"
  version "18.12.6"
  sha256 "6838be8732fc80c0cd97f1afea23cdeb5132237eeb760a650d64f39341ffd5ec"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
