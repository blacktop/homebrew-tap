class SeccompGen < Formula
  desc "Docker Secure Computing Profile Generator."
  homepage "https://github.com/blacktop/seccomp-gen"
  url "https://github.com/blacktop/seccomp-gen/releases/download/v1.0.1/seccomp-gen_1.0.1_macOS_amd64.tar.gz"
  version "1.0.1"
  sha256 "670aac46b77a48533b8cfa19f11cb2b07416d79d1745693ed0efff7894a86c0d"

  def install
    bin.install "scgen"
  end

  test do
    system "#{bin}/scgen --version"
  end
end
