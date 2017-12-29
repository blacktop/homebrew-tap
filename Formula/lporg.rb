class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.4/lporg_17.12.4_macOS_amd64.tar.gz"
  version "17.12.4"
  sha256 "cfa92b01d47b2b1d9be6d9d0c91806fcb0e0f7a4d28903f66a15c5420c958913"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
