class FridaTools < Formula
  include Language::Python::Virtualenv

  desc "CLI tools for Frida"
  homepage "https://www.frida.re/"
  url "https://files.pythonhosted.org/packages/ab/42/7823de1787e4c13c88c5de4caaf315365687d5425c9b484df2917bb6ca75/frida-tools-12.3.0.tar.gz"
  sha256 "8edc67d1ae3792ff5b2dc63508cde4d247f92b7d0d7bf153d74a21a6d58dc045"
  license "MIT"
  revision 3

  livecheck do
    url :stable
    regex(%r{href=.*?/packages.*?/frida[._-]v?(\d+(?:\.\d+)*(?:[a-z]\d+)?)\.t}i)
  end

  depends_on "python@3.11"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "frida" do
    url "https://files.pythonhosted.org/packages/9f/25/811fe2bd92dfb6c6208a6fb18645b748d3645571f4d3f314c4de8a19dda4/frida-16.1.4.tar.gz"
    sha256 "b2d3a22f8422cd9379ee2a3ca870e50cdb1706cfa48be9587bf835d63e51e582"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/9a/02/76cadde6135986dc1e82e2928f35ebeb5a1af805e2527fe466285593a2ba/prompt_toolkit-3.0.39.tar.gz"
    sha256 "04505ade687dc26dc4284b1ad19a83be2f2afe83e7a828ace0c72f3a1df72aac"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/d6/f7/4d461ddf9c2bcd6a4d7b2b139267ca32a69439387cc1f02a924ff8883825/Pygments-2.16.1.tar.gz"
    sha256 "1daff0494820c69bc8941e407aa20f577374ee88364ee10a98fdbe0aece96e29"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/a6/ad/428bc4ff924e66365c96994873e09a17bb5e8a1228be6e8d185bc2a11de9/wcwidth-0.2.9.tar.gz"
    sha256 "a675d1a4a2d24ef67096a04b85b02deeecd8e226f57b5e3a72dbb9ed99d27da8"
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