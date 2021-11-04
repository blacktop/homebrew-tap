# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.1/ipsw_3.1.1_macOS_arm64.tar.gz"
      sha256 "75b3bb639c96a1b8a67feea631a98ea6dd9e152b272742ad38f0e179c2a2c1a0"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.1/ipsw_3.1.1_macOS_x86_64.tar.gz"
      sha256 "ea5a5ca7f1323692604348217d13a11094001d74fe17135506c04992b22fd2aa"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.1/ipsw_3.1.1_macOS_universal.tar.gz"
    sha256 "558641fca54495e5d0d35919e904536972e5b9e25d01d8cdbe20388cbcfdc8d6"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.1/ipsw_3.1.1_linux_arm64.tar.gz"
      sha256 "90447af1fa697c352c5fc9040297f3e63cadbafc24fd447028cd2bb03c65e63f"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.1/ipsw_3.1.1_linux_x86_64.tar.gz"
      sha256 "d1f9807c78d21d36a858bcfbf9ffec79f6d31454f0c192e618b8d48aac487d71"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
  end

  depends_on "bat" => :optional

  test do
    system "#{bin}/ipsw --version"
  end
end
