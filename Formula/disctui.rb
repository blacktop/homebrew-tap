class Disctui < Formula
  desc "A fast, minimal Discord TUI with AI-powered conversation summaries"
  homepage "https://github.com/blacktop/disctui"
  version "0.1.3"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/blacktop/disctui/releases/download/v0.1.3/disctui-aarch64-apple-darwin.tar.xz"
      sha256 "2160919765d58db8fb7a236459e7900e9cd903817016ac018a8924014ab7b561"
    end
    if Hardware::CPU.intel?
      url "https://github.com/blacktop/disctui/releases/download/v0.1.3/disctui-x86_64-apple-darwin.tar.xz"
      sha256 "78443bdc6ee7450e00c502b39e67833e3f83558c67a2262006cf67064e24c46d"
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
