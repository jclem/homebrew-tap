class Get < Formula
  desc "A convenient HTTP CLI with expressive inline request syntax"
  homepage "https://github.com/jclem/get"
  version "0.6.0"
  license "MIT"

  on_arm do
    url "https://github.com/jclem/get/releases/download/v0.6.0/get-aarch64-apple-darwin.tar.xz"
    sha256 "50fa028b987b22d38ee9db0604cc958cf9b9694b63346ea411f645770b450f83"
  end

  def install
    bin.install "get"
  end

  test do
    system bin/"get", "--version"
  end
end
