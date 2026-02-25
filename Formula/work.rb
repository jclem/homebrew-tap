class Work < Formula
  desc "A CLI for managing work"
  homepage "https://github.com/jclem/work"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/work/releases/download/v0.1.5/work-aarch64-apple-darwin.tar.xz"
      sha256 "796f3dcaff79267a147806ce98bf1266e52bd5f2e7c395cc8f24b0f1a6ce0db3"
    end
  end

  def install
    bin.install "work"
  end

  test do
    system bin/"work", "--version"
  end
end
