class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.1/lporg_17.12.1_macOS_amd64.tar.gz"
  version "17.12.1"
  sha256 "95c7f3b2b616a8094e1313da620dca560f2fc2a5083276a5e5d083fc3858d201"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
