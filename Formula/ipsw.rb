class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.09.12/ipsw_18.09.12_macOS_amd64.tar.gz"
  version "18.09.12"
  sha256 "65bd5400e581697fcc1d833d6e27fd0ae389d4ab82d7ecddce1b0730c90267c6"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
