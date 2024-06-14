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
  depends_on "pyqt@5"

  def install
    bin.install "pylaunchd_gui.py" => "pylaunchd"
  end

  test do
    system "false"
  end
end
