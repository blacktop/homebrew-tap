class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.2/lporg_17.12.2_macOS_amd64.tar.gz"
  version "17.12.2"
  sha256 "5e612791fa9bee24efbd7f3887315ad4b1640b1728233061e6bb22da8bb16cac"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
