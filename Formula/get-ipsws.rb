class GetIpsws < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/get-ipsws"
  url "https://github.com/blacktop/get-ipsws/releases/download/v18.09.7/get-ipsws_18.09.7_macOS_amd64.tar.gz"
  version "18.09.7"
  sha256 "ddc3d67938546d8665b1bab21d576f9ae3956a14519a11218869abfe984f429d"

  def install
    bin.install "get-ipsws"
  end

  test do
    system "#{bin}/get-ipsws --version"
  end
end
