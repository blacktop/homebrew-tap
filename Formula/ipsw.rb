class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.09.11/ipsw_18.09.11_macOS_amd64.tar.gz"
  version "18.09.11"
  sha256 "4ab6d6ed30948acf40773b6a48780bf3a0a95e0ecc51f15ceac181fcd6645ecb"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
