class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.0-dev/lporg_17.12.0-dev_macOS_amd64.tar.gz"
  version "17.12.0-dev"
  sha256 "a7ec09cfcaa3b83423dc041d47f3fef7926464eccc77581064c2b9b57fdc17fe"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
