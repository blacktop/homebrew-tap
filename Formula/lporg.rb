class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.12/lporg_17.12.12_macOS_amd64.tar.gz"
  version "17.12.12"
  sha256 "3476badfc65160ae3151dc7b28b9517011a582426d25c97f18d9e1aded67ebf7"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
