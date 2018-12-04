class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.12.1/ipsw_18.12.1_macOS_amd64.tar.gz"
  version "18.12.1"
  sha256 "63ed9276c7cbe738c5f579205fbe435a7b22db63a92a5fc0089525db1733905a"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
