class GetIpsws < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/get-ipsws"
  url "https://github.com/blacktop/get-ipsws/releases/download/v18.09.6/get-ipsws_18.09.6_macOS_amd64.tar.gz"
  version "18.09.6"
  sha256 "5b962a0b0bd6a605e726c9e6947967ec940016e68561637bf9630849137ad47f"

  def install
    bin.install "get-ipsws"
  end

  test do
    system "#{bin}/get-ipsws --version"
  end
end
