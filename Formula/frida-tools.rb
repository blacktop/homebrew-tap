class FridaTools < Formula
  include Language::Python::Virtualenv

  desc "CLI tools for Frida"
  homepage "https://www.frida.re/"
  url "https://github.com/frida/frida-tools/archive/9.0.0.tar.gz"
  sha256 "1709e6f3f587e872e1936b1e999d50a039a6e483887248c68ed67dbff6b62187"

  depends_on "python"

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz"
    sha256 "5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b"
  end

  resource "frida" do
    url "https://files.pythonhosted.org/packages/e2/b9/25a2e734a04916dccd27643f5c92868b35f45397c47d51d804a3e852c9c9/frida-14.0.1.tar.gz"
    sha256 "0830f966325334d590d4b37842d8f0816d0996aa47a2c7cc60c2aeb008271ee5"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/d4/12/7fe77b49d67845a378cfadb484b64218ed09d0e8bf420c663b4fe28f0631/prompt_toolkit-3.0.8.tar.gz"
    sha256 "25c95d2ac813909f813c93fde734b6e44406d1477a9faef7c915ff37d39c0a8c"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/5d/0e/ff13c055b014d634ed17e9e9345a312c28ec6a06448ba6d6ccfa77c3b5e8/Pygments-2.7.2.tar.gz"
    sha256 "381985fcc551eb9d37c52088a32914e00517e57f4a21609f48141ba08e193fa0"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
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