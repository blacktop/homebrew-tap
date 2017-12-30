class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.11/lporg_17.12.11_macOS_amd64.tar.gz"
  version "17.12.11"
  sha256 "f88428ffa03a829b012077d80c3d5addd947df409b5ffd84703f3ad814d3af4f"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
