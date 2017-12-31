class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.14/lporg_17.12.14_macOS_amd64.tar.gz"
  version "17.12.14"
  sha256 "99e2cdbfaef5bc1342604bfb4df43993a72add747daa844d28f15673d59ac0fe"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
