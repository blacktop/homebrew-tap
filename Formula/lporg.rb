class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.13/lporg_17.12.13_macOS_amd64.tar.gz"
  version "17.12.13"
  sha256 "4bd6803ff1c721c69839c1d22fd5f14fae430a1d05018a12b4539603e9e32563"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
