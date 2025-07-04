# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class McpTts < Formula
  desc "mcp-tts"
  homepage "https://github.com/blacktop/mcp-tts"
  version "0.1.16"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/blacktop/mcp-tts/releases/download/v0.1.16/mcp-tts_0.1.16_macOS_x86_64.tar.gz"
    sha256 "66d902145367da98bddad0031d734ebd96e254afeab96b8c3988a8df5357cd3d"

    def install
      bin.install "mcp-tts"
      bash_completion.install "completions/_bash" => "mcp-tts"
      zsh_completion.install "completions/_zsh" => "_mcp-tts"
      fish_completion.install "completions/_fish" => "mcp-tts.fish"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/blacktop/mcp-tts/releases/download/v0.1.16/mcp-tts_0.1.16_macOS_arm64.tar.gz"
    sha256 "8dbefadf024c693d24a8f5597a6dac5c65c0a85b59c1da931279cd3e13418e4c"

    def install
      bin.install "mcp-tts"
      bash_completion.install "completions/_bash" => "mcp-tts"
      zsh_completion.install "completions/_zsh" => "_mcp-tts"
      fish_completion.install "completions/_fish" => "mcp-tts.fish"
    end
  end

  test do
    system "#{bin}/mcp-tts --help"
  end
end
