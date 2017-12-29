class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.9/lporg_17.12.9_macOS_amd64.tar.gz"
  version "17.12.9"
  sha256 "589ab4df70b4daf5a3c2b8464e48b92f3f31d7bc02a7e2905a7f227b12863013"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
