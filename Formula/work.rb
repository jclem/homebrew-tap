class Work < Formula
  desc "A CLI for managing work"
  homepage "https://github.com/jclem/work"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jclem/work/releases/download/v0.1.2/work-aarch64-apple-darwin.tar.xz"
      sha256 "e84640f465923dde1cd572ec1fa1ef6121fe5d7d8f92ad5ab15f58c8fd9121e9"
    end
  end

  def install
    bin.install "work"
  end

  test do
    system bin/"work", "--version"
  end
end
