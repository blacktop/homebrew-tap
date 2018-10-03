class GetIpsws < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/get-ipsws"
  url "https://github.com/blacktop/get-ipsws/releases/download/v18.09.5/get-ipsws_18.09.5_macOS_amd64.tar.gz"
  version "18.09.5"
  sha256 "1bb1ffe0efbfcb11d20dda9c2052e5afd96c5476a292359037a166b0943c7acf"

  def install
    bin.install "get-ipsws"
  end

  test do
    system "#{bin}/get-ipsws --version"
  end
end
