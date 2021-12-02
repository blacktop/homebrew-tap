# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ipsw < Formula
  desc "Download and parse ipsw(s)"
  homepage "https://github.com/blacktop/ipsw"
  version "3.1.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.20/ipsw_3.1.20_macOS_arm64.tar.gz"
      sha256 "6b39e6990188c60d1c271a945534403bc988ce6ad240248ad47405be547806cf"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.20/ipsw_3.1.20_macOS_x86_64.tar.gz"
      sha256 "1841ab943d5141ffc03623d42d5f4742bd6f1d898af716db7d889928b84b018d"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    url "https://github.com/blacktop/ipsw/releases/download/v3.1.20/ipsw_3.1.20_macOS_universal.tar.gz"
    sha256 "359ff0d1d1eab3dd2a206723090525a2d2d4317b16c69a5205fde40314ab9c32"

    def install
      bin.install "ipsw"
      bash_completion.install "completions/_bash" => "ipsw"
      zsh_completion.install "completions/_zsh" => "_ipsw"
      fish_completion.install "completions/_fish" => "ipsw.fish"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.20/ipsw_3.1.20_linux_arm64.tar.gz"
      sha256 "7420a6d1d41e10ce775b1fa134294afcc0756ea1737fe7ae122834e49d71a846"

      def install
        bin.install "ipsw"
        bash_completion.install "completions/_bash" => "ipsw"
        zsh_completion.install "completions/_zsh" => "_ipsw"
        fish_completion.install "completions/_fish" => "ipsw.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/ipsw/releases/download/v3.1.20/ipsw_3.1.20_linux_x86_64.tar.gz"
      sha256 "451429925a23a1bc803d929a2b0b5e0a2b012d56a197cd0c525cdc973273a155"

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
