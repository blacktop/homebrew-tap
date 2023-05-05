class FridaTools < Formula
  include Language::Python::Virtualenv

  desc "CLI tools for Frida"
  homepage "https://www.frida.re/"
  url "https://files.pythonhosted.org/packages/1b/0c/885cb17beeae600897794d668541102995378a21e4a2d938b2c87cb6e1be/frida-tools-12.1.2.tar.gz"
  sha256 "f52943ca9d5f2ceccbaaeeacc55a98da3c04cd08eb9dbcdf417211a32be23c96"
  license "MIT"
  revision 3

  livecheck do
    url :stable
    regex(%r{href=.*?/packages.*?/frida[._-]v?(\d+(?:\.\d+)*(?:[a-z]\d+)?)\.t}i)
  end

  depends_on "python@3.10"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "frida" do
    url "https://files.pythonhosted.org/packages/0b/5f/68e3f8fbe455ea305235e4124d3fec8009f56b04e252b1f920e7b47f986a/frida-16.0.19.tar.gz"
    sha256 "ae29088e39fdc00f152ff4adff62494dcb9e8a69feabf5116edf65c3ffa76a56"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/4b/bb/75cdcd356f57d17b295aba121494c2333d26bfff1a837e6199b8b83c415a/prompt_toolkit-3.0.38.tar.gz"
    sha256 "23ac5d50538a9a38c8bde05fecb47d0b403ecd0662857a86f886f798563d5b9b"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/89/6b/2114e54b290824197006e41be3f9bbe1a26e9c39d1f5fa20a6d62945a0b3/Pygments-2.15.1.tar.gz"
    sha256 "8ace4d3c1dd481894b2005f560ead0f9f19ee64fe983366be1a21e171d12775c"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    ENV["LC_ALL"] = "en_US.UTF-8"

    output = shell_output("#{bin}/frida-ps")
    assert_match "PID  Name", output
  end
end