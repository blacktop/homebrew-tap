class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.5/lporg_17.12.5_macOS_amd64.tar.gz"
  version "17.12.5"
  sha256 "f96b143db2da0b4118670a00b2dd056e5cd1d734ae1660db1ea3fcd286708a14"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
