# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "20.08.88"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.88/ipsw_20.08.88_macOS_x86_64.tar.gz"
    sha256 "ed0d9dfe3b02f5c4ded1c6e50473ea2aaeb91a622152ae185345a12a33dd3dcf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.88/ipsw_20.08.88_macOS_arm64.tar.gz"
    sha256 "14b5694354dea3fb87e2df705b1d3bee0a5ab6dfd972ec9a92392bb4c9960632"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.88/ipsw_20.08.88_linux_x86_64.tar.gz"
    sha256 "fb130f988964422f39bcfc376550118a23c4d2bed7f8189683dbd3ef35cbd4ee"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/blacktop/ipsw/releases/download/v20.08.88/ipsw_20.08.88_linux_arm64.tar.gz"
    sha256 "61a237cb800d14f27a06ef9a59ae4a7a1ae20731f7e646e57eabfcfd124d59dc"
  end

  depends_on "bat"

  def install
    bin.install "ipsw"
  end

  test do
    system "#{bin}/ipsw --version"
  end
end
