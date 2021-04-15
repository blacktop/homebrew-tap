# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.20"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.20/ipsw_3.0.20_macOS_x86_64.tar.gz"
    sha256 "041b7c64786e3b46adb99e2320088cb024ed44d768eb4f8d8d27047244eb4165"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.20/ipsw_3.0.20_macOS_arm64.tar.gz"
    sha256 "03d4fb0aaba365eb281af681f14580c2d69ed1512a09fc8ccf510362130a2058"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.20/ipsw_3.0.20_linux_x86_64.tar.gz"
    sha256 "38b4c707fb47755cb1456e719a49db17fd97f125f78d4b8284284bba2aec56b8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.20/ipsw_3.0.20_linux_arm64.tar.gz"
    sha256 "f02b477121c29ee5378a6c732190bc394fe953165a12b58d1cf85fe37fcbac18"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
