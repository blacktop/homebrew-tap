class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.10.2/ipsw_18.10.2_macOS_amd64.tar.gz"
  version "18.10.2"
  sha256 "c10ad88e35d265e0190583fc93bbd531c88d5dd155a36b516c69a214286dcad7"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
