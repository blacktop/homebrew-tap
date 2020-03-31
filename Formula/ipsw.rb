# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "19.08.99"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v19.08.99/ipsw_19.08.99_macOS_amd64_extras.tar.gz"
    sha256 "565508b0f9d7b31ce42636bcf0195f941a351635e2327af940bf7fcdc0f33827"
  elsif OS.linux?
  end
  
  depends_on "lzfse"
  depends_on "xz"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
