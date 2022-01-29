class FridaTools < Formula
  include Language::Python::Virtualenv

  desc "CLI tools for Frida"
  homepage "https://www.frida.re/"
  url "https://files.pythonhosted.org/packages/57/0c/6b71aba8932e1c4d2c64b5305bcf9788894213eb8b7c75bad0fcdf861788/frida-tools-10.4.1.tar.gz"
  sha256 "05cbd496b284d7eabecc914f8655d7a9dd0d735cf76226110462a5c56aa070ca"
  license "MIT"
  revision 3

  livecheck do
    url :stable
    regex(%r{href=.*?/packages.*?/frida[._-]v?(\d+(?:\.\d+)*(?:[a-z]\d+)?)\.t}i)
  end

  depends_on "python@3.9"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "frida" do
    url "https://files.pythonhosted.org/packages/9a/d6/fb62513f014ec83d00a224dfa057829ed814a4a7e0a39379dfe2520ed8a1/frida-15.1.14.tar.gz"
    sha256 "b44ceee06744b7c5e153d3afa83f1f0ec3e1d7e6f1c291954221f063c88cad95"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/1b/1e/09b545d3608a8092c34132972ec1078d3356381a2c8553fd71d2ed6036a3/prompt_toolkit-3.0.26.tar.gz"
    sha256 "a51d41a6a45fd9def54365bca8f0402c8f182f2b6f7e29c74d55faeb9fb38ac4"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/94/9c/cb656d06950268155f46d4f6ce25d7ffc51a0da47eadf1b164bbf23b718b/Pygments-2.11.2.tar.gz"
    sha256 "4e426f72023d88d03b2fa258de560726ce890ff3b630f88c21cbb8b2503b8c6a"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/89/38/459b727c381504f361832b9e5ace19966de1a235d73cdbdea91c771a1155/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
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