class Disctui < Formula
  desc "A fast, minimal Discord TUI with AI-powered conversation summaries"
  homepage "https://github.com/blacktop/disctui"
  version "0.1.5"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/disctui/releases/download/v0.1.5/disctui-aarch64-apple-darwin.tar.xz"
      sha256 "c7459bb7ded7ee2e8eac6dfce9f2ee20656e939b5e8d1f89344c60d5fefeda98"
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/disctui/releases/download/v0.1.5/disctui-x86_64-apple-darwin.tar.xz"
      sha256 "7fbc72d0ed9bbfa5120652148256ab65683000578554e769d80dab18b30b794e"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin": {},
    "x86_64-apple-darwin":  {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "disctui" if OS.mac? && Hardware::CPU.arm?
    bin.install "disctui" if OS.mac? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
