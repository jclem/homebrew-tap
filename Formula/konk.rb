# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konk < Formula
  desc ""
  homepage "https://github.com/jclem/konk"
  version "0.18.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jclem/konk/releases/download/v0.18.0/konk_0.18.0_macOS_arm64.tar.gz"
      sha256 "e85732989d4132f225147463e80179cd2cb3e638502288ba17d620d56d78fa2e"

      def install
        bin.install "konk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jclem/konk/releases/download/v0.18.0/konk_0.18.0_macOS_64-bit.tar.gz"
      sha256 "6b6a9b352d60fffed809bcf1cbd032b2ccabf626d134c78160f6caa18fd92781"

      def install
        bin.install "konk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jclem/konk/releases/download/v0.18.0/konk_0.18.0_Linux_arm64.tar.gz"
      sha256 "e85261b0653451238172920e965e58eec02e342f399623380b69a8dccc07a55e"

      def install
        bin.install "konk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jclem/konk/releases/download/v0.18.0/konk_0.18.0_Linux_64-bit.tar.gz"
      sha256 "bf661511b93e20573ce7fb9c986d766e9f0a4fa011085b06ef1387d364e87e49"

      def install
        bin.install "konk"
      end
    end
  end

  test do
    system "#{bin}/konk --version"
  end
end
