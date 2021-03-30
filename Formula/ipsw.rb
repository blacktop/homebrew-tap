# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.0.14"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.14/ipsw_3.0.14_macOS_x86_64.tar.gz"
    sha256 "84354be8a42b9dace39c4c0db454b50ec5d8c9d16da55c6373d8637b2ab32999"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.14/ipsw_3.0.14_macOS_arm64.tar.gz"
    sha256 "e7a9b2ff9195bfff4236d778b96671170d8410833477a06d1a5d405d143dc340"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.14/ipsw_3.0.14_linux_x86_64.tar.gz"
    sha256 "d650ec6dd2298202b805bf6fb8f361711feb0ff91bafa73afb2e4a712efe56fd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v3.0.14/ipsw_3.0.14_linux_arm64.tar.gz"
    sha256 "00e82cc778e56f611a81e4270810191b90aa0828dcb160e8f5d141969cf7a4a3"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
