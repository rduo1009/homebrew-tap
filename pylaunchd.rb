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
    url "https://files.pythonhosted.org/packages/6d/3f/8fa2e674b9b4f1a25e9af60ff8967b3f2705b3bc9ec8fa616ae8ff41f1f2/PyQt5-5.15.4.tar.gz"
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
