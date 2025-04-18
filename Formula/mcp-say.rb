# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class McpSay < Formula
  desc "mcp-say"
  homepage "https://github.com/blacktop/mcp-say"
  version "0.1.8"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/mcp-say/releases/download/v0.1.8/mcp-say_0.1.8_macOS_x86_64.tar.gz"
    sha256 "39e488f9fcfb2e9fd3da202eb41778c277113fcd1bff9812bd7bb26f867967cc"

    def install
      bin.install "mcp-say"
      bash_completion.install "completions/_bash" => "mcp-say"
      zsh_completion.install "completions/_zsh" => "_mcp-say"
      fish_completion.install "completions/_fish" => "mcp-say.fish"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/blacktop/mcp-say/releases/download/v0.1.8/mcp-say_0.1.8_macOS_arm64.tar.gz"
    sha256 "2e519691d9587b25f5d8912daae06a748e418e482961f78704d4055bcfb1fd1d"

    def install
      bin.install "mcp-say"
      bash_completion.install "completions/_bash" => "mcp-say"
      zsh_completion.install "completions/_zsh" => "_mcp-say"
      fish_completion.install "completions/_fish" => "mcp-say.fish"
    end
  end

  test do
    system "#{bin}/mcp-say --help"
  end
end
