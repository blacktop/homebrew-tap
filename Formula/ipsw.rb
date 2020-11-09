# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "20.08.56"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.56/ipsw_20.08.56_macOS_x86_64.tar.gz"
    sha256 "9a28257b032828936aaee814eb4e37f29ee0cef855c6bc1ffc0ebb5d8983bbe3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v20.08.56/ipsw_20.08.56_Linux_x86_64.tar.gz"
      sha256 "1beb95c7d380625f2033418458eb7926d01e9166c22361da612517aeb31cf4c9"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/blacktop/ipsw/releases/download/v20.08.56/ipsw_20.08.56_Linux_arm64.tar.gz"
        sha256 "557d5ef38d88892bd9bc61d01cf2c6dbe3b5c6a8dda40222c7621cee40a4531a"
      else
      end
    end
  end
  
  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
