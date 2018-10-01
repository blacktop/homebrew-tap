class GetIpsws < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/get-ipsws"
  url "https://github.com/blacktop/get-ipsws/releases/download/v18.09.3/get-ipsws_18.09.3_macOS_amd64.tar.gz"
  version "18.09.3"
  sha256 "e3c919c60ba69dc2e5f6ac87d8dd7103cc64ea1fd7af79e0e28720ac951b039b"

  def install
    bin.install "get-ipsws"
  end

  test do
    system "#{bin}/get-ipsws --version"
  end
end
