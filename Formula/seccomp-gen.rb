class SeccompGen < Formula
  desc "Docker Secure Computing Profile Generator."
  homepage "https://github.com/blacktop/seccomp-gen"
  url "https://github.com/blacktop/seccomp-gen/releases/download/v1.0.2/seccomp-gen_1.0.2_macOS_amd64.tar.gz"
  version "1.0.2"
  sha256 "6d16a0f7ccd12f81dfc5ab6dd77720f0f1d48e738feec6ca872a9ee3c5e4133b"

  def install
    bin.install "scgen"
  end

  test do
    system "#{bin}/scgen --version"
  end
end
