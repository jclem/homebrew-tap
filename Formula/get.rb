class Get < Formula
  desc "A convenient HTTP CLI with expressive inline request syntax"
  homepage "https://github.com/jclem/get"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.8.0/get-aarch64-apple-darwin.tar.xz"
      sha256 "6748219e4e4014d69459ff0c383cac49396e876a1b52d645f27f6c037939fb90"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.8.0/get-x86_64-apple-darwin.tar.xz"
      sha256 "430e6c7c476f06f7d4656a3c45fc4f21aa9070f37f7f7dd3dfdd75a252e1142d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.8.0/get-aarch64-unknown-linux-musl.tar.xz"
      sha256 "5a863c7a86a2b2a0d0abd211abc69a949aa593e1b2675e6bd50ad7b03adf7b7f"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.8.0/get-x86_64-unknown-linux-musl.tar.xz"
      sha256 "08da45d2e998d7ab66c5846f6c11c6ce5fbca66d7042a83b28c2e85107d62fa1"
    end
  end

  def install
    bin.install "get"
  end

  test do
    system bin/"get", "--version"
  end
end
