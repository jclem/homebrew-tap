class Work < Formula
  desc "A CLI for managing work"
  homepage "https://github.com/jclem/work"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/work/releases/download/v0.1.6/work-aarch64-apple-darwin.tar.xz"
      sha256 "957d1f47d921d8c479e98452d62e46dc7c341c9ac8fb26ea66018d9a5375c53a"
    end
  end

  def install
    bin.install "work"
  end

  test do
    system bin/"work", "--version"
  end
end
