class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.11.1/ipsw_18.11.1_macOS_amd64.tar.gz"
  version "18.11.1"
  sha256 "a570dd3b8bece7d52ebf5e381ac0062c795fd62a448548b195e24720c1dbadc6"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
