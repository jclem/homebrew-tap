class Get < Formula
  desc "A convenient HTTP CLI with expressive inline request syntax"
  homepage "https://github.com/jclem/get"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.9.1/get-aarch64-apple-darwin.tar.xz"
      sha256 "f35da00f5414be786043a266b0f8730655f56653147d8c1fbc6865ab8da83249"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.9.1/get-x86_64-apple-darwin.tar.xz"
      sha256 "14b2e4c50e50e87e259382ad72510f73648a897edfa19c07ef5d5ce373962994"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.9.1/get-aarch64-unknown-linux-musl.tar.xz"
      sha256 "f8ef711c487c23a122b21a675ac3632b6f87e6cb806ae27fb666a61b371a9089"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.9.1/get-x86_64-unknown-linux-musl.tar.xz"
      sha256 "a003ba46c864afab801ea445320d99d63443ab6542dd6abca1c9675f2c7ed7d4"
    end
  end

  def install
    bin.install "get"
  end

  test do
    system bin/"get", "--version"
  end
end
