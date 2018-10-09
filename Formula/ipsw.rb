class Ipsw < Formula
  desc "Download ipsw(s) from ipsw.me or theiphonewiki.com"
  homepage "https://github.com/blacktop/ipsw"
  url "https://github.com/blacktop/ipsw/releases/download/v18.09.10/ipsw_18.09.10_macOS_amd64.tar.gz"
  version "18.09.10"
  sha256 "9029e0bd30c7d4c45fffd82e4b64c3d52a0fac6806d0909e9567450a127c4e6b"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
