class Get < Formula
  desc "A convenient HTTP CLI with expressive inline request syntax"
  homepage "https://github.com/jclem/get"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.9.0/get-aarch64-apple-darwin.tar.xz"
      sha256 "9ef0ae3ebd65027fce9675a3cf5f516877542480ef6f33c22a121cefc05da0cc"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.9.0/get-x86_64-apple-darwin.tar.xz"
      sha256 "557b7c3596e0b3ac93685e560042f33f5d2c464801299df006ff20af81b0becf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jclem/get/releases/download/v0.9.0/get-aarch64-unknown-linux-musl.tar.xz"
      sha256 "02179c1b7cd7ec2346f5b5b97e01cb72af4c2be0b5e43d7a69f6a6e3f10718e8"
    end
    on_intel do
      url "https://github.com/jclem/get/releases/download/v0.9.0/get-x86_64-unknown-linux-musl.tar.xz"
      sha256 "da2eeb2677c7ac578c32a986ef5ca8421590f3452172b862a363231bfba4509c"
    end
  end

  def install
    bin.install "get"
  end

  test do
    system bin/"get", "--version"
  end
end
