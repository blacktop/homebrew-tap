class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.10/lporg_17.12.10_macOS_amd64.tar.gz"
  version "17.12.10"
  sha256 "bb1047479782eb80e07fcc2aab5e6d8dcf8f23b70636d438c8208b9ff2e45013"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
