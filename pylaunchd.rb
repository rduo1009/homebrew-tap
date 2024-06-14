class Pylaunchd < Formula
  desc "MacOS launchd/launchctl GUI"
  homepage "https://github.com/glowinthedark/pylaunchd"
  url "https://github.com/glowinthedark/pylaunchd/archive/refs/heads/main.zip"
  version "0.1"
  sha256 "replace_with_the_actual_sha256_checksum"

  head "https://github.com/glowinthedark/pylaunchd.git"

  depends_on "python@3.9"
  depends_on "qt5"

  resource "pyqt5" do
    url "https://files.pythonhosted.org/packages/4d/5d/b8b6e26956ec113ad3f566e02abd12ac3a56b103fcc7e0735e27ee4a1df3/PyQt5-5.15.10.tar.gz"
    sha256 "d46b7804b1b10a4ff91753f8113e5b5580d2b4462f3226288e2d84497334898a"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    venv.pip_install resource("pyqt5")
    if build.head?
      system "git", "clone", "https://github.com/glowinthedark/pylaunchd.git", "."
    else
      libexec.install "pylaunchd_gui.py"
    end
    (bin/"pylaunchd").write_env_script libexec/"pylaunchd_gui.py", PATH: "#{Formula["qt5"].opt_bin}:$PATH"
  end

  test do
    system "false"
  end
end
