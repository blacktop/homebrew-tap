class FridaTools < Formula
  include Language::Python::Virtualenv

  desc "CLI tools for Frida"
  homepage "https://www.frida.re/"
  url "https://files.pythonhosted.org/packages/d6/cd/6086bd6fc3a32a3258b00e43348954a4c1078353f7538e9cb6217d48fcc2/frida-tools-9.2.2.tar.gz"
  sha256 "91279e82024ca70a5e1bfebb28e12e2f1873d73654aeba81dbd0998cf05d86e8"
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
    url "https://files.pythonhosted.org/packages/03/8c/552d393fb1eb91f4c14482efcd04c89f35bb6d96f807c12c20ab837e15b2/frida-14.2.13.tar.gz"
    sha256 "bfeb68ab7b2717bf94e56e2ba025557e82c371878a1b2e1ac52d0a6342985d18"
  end

  resource "prompt_toolkit" do
    url "https://files.pythonhosted.org/packages/b1/32/2a6b734dc25b249467bfc1d844b077a252ea393d1b90733f4e899aa56506/prompt_toolkit-3.0.16.tar.gz"
    sha256 "0fa02fa80363844a4ab4b8d6891f62dd0645ba672723130423ca4037b80c1974"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/15/9d/bc9047ca1eee944cc245f3649feea6eecde3f38011ee9b8a6a64fb7088cd/Pygments-2.8.1.tar.gz"
    sha256 "2656e1a6edcdabf4275f9a3640db59fd5de107d88e8663c5d4e9a0fa62f77f94"
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