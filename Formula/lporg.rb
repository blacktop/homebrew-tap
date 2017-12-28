class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.3/lporg_17.12.3_macOS_amd64.tar.gz"
  version "17.12.3"
  sha256 "860028596ace378f5e4274f9b7261227f821cf3cd1aa9a58bbd1a801fc3e31a9"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
