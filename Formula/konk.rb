# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konk < Formula
  desc ""
  homepage "https://github.com/jclem/konk"
  version "0.29.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/jclem/konk/releases/download/v0.29.7/konk_0.29.7_darwin_amd64.tar.gz"
      sha256 "a01cffb51a6b5fab5b2c3598770d0d26bc127ebcccff18e5b4d90460f893a954"

      def install
        bin.install "konk"
      end
    end
    on_arm do
      url "https://github.com/jclem/konk/releases/download/v0.29.7/konk_0.29.7_darwin_arm64.tar.gz"
      sha256 "1b047113f649c22be78f9cb368ec1710ae6c5e845109e73b97ed72924c5e72d0"

      def install
        bin.install "konk"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jclem/konk/releases/download/v0.29.7/konk_0.29.7_linux_amd64.tar.gz"
        sha256 "1ae938ec73c6de9cf57dbdbe3aef2bab11f9ab80b01d202d77f1ce0caaf6f4ca"

        def install
          bin.install "konk"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jclem/konk/releases/download/v0.29.7/konk_0.29.7_linux_arm64.tar.gz"
        sha256 "aaf9f21710f7aed96c84b8a6721e058d93453bf1c7e840d284a47cedaa27bf80"

        def install
          bin.install "konk"
        end
      end
    end
  end

  test do
    system "#{bin}/konk --version"
  end
end
