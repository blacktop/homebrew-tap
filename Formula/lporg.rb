class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.0/lporg_17.12.0_macOS_amd64.tar.gz"
  version "17.12.0"
  sha256 "1ed08de828ee4eafee410f5a7123dfd3dac031aa95baf0ad5114e2ccd0cdd9ec"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
