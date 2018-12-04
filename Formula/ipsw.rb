class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.12.3/ipsw_18.12.3_macOS_amd64.tar.gz"
  version "18.12.3"
  sha256 "d1bcd48ddc969aecb7b3acc2daca2f9e20433620f2a345681dd8919eee7f119c"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
