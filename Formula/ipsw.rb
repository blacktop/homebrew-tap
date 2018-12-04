class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.12.2/ipsw_18.12.2_macOS_amd64.tar.gz"
  version "18.12.2"
  sha256 "97264607d9f1a61f23edc5bee2a8892328e73db3983b9d9a21aea899497ab481"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
