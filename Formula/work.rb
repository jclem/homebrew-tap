class Work < Formula
  desc "A CLI for managing work"
  homepage "https://github.com/jclem/work"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/work/releases/download/v0.1.3/work-aarch64-apple-darwin.tar.xz"
      sha256 "4d8addf4fb9cfe2eb5e7c8fd6c0d24840f469e1b1aa20679e049595de6c74eb7"
    end
  end

  def install
    bin.install "work"
  end

  test do
    system bin/"work", "--version"
  end
end
