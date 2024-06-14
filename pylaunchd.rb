class Pylaunchd < Formula
  desc "MacOS launchd/launchctl GUI"
  homepage "https://github.com/glowinthedark/pylaunchd"
  url "https://github.com/glowinthedark/pylaunchd/archive/refs/heads/main.zip"
  version "0.1"
  sha256 "4d425fa899f974ba0ad6876a3f322dc267f046c269326e2bdc4539b14d09968a"

  head "https://github.com/glowinthedark/pylaunchd.git"

  include Language::Python::Virtualenv

  depends_on "python@3.9"
  depends_on "qt5"

  resource "pyqt5" do
    url "https://files.pythonhosted.org/packages/4d/5d/b8b6e26956ec113ad3f566e02abd12ac3a56b103fcc7e0735e27ee4a1df3/PyQt5-5.15.10.tar.gz"
    sha256 "d46b7804b1b10a4ff91753f8113e5b5580d2b4462f3226288e2d84497334898a"
  end

  def install
    virtualenv_install_with_resources
    if build.head?
      bin.install "pylaunchd_gui.py" => "pylaunchd_gui"
    else
      libexec.install "pylaunchd_gui.py" => "pylaunchd_gui"
    end
    (bin/"pylaunchd").write_env_script libexec/"pylaunchd_gui.py", PATH: "#{Formula["qt5"].opt_bin}:$PATH"
  end

  test do
    system "false"
  end
end
