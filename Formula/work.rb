class Work < Formula
  desc "A CLI for managing work"
  homepage "https://github.com/jclem/work"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/work/releases/download/v0.1.4/work-aarch64-apple-darwin.tar.xz"
      sha256 "c4a801d1ff30cbd0cba2a69fc359d211e9f25a0b3b78adeccdb6894463353893"
    end
  end

  def install
    bin.install "work"
  end

  test do
    system bin/"work", "--version"
  end
end
