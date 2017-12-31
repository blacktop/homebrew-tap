class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.15/lporg_17.12.15_macOS_amd64.tar.gz"
  version "17.12.15"
  sha256 "cc96b4a0de920c4d8cd551bd4adc23b03ca494ad6b7e9effefb35f3ec727905f"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
