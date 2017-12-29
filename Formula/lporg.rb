class Lporg < Formula
  desc "Organize Your macOS Launchpad Apps."
  homepage "https://github.com/blacktop/lporg"
  url "https://github.com/blacktop/lporg/releases/download/17.12.7/lporg_17.12.7_macOS_amd64.tar.gz"
  version "17.12.7"
  sha256 "4e7f8497357fb40df563fd4aa68613022e81708042e9f06e52972adae3bb3aa7"

  def install
    bin.install "lporg"
  end

  test do
    system "#{bin}/lporg --version"
  end
end
