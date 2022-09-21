# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Konk < Formula
  desc ""
  homepage "https://github.com/jclem/konk"
  version "0.27.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jclem/konk/releases/download/v0.27.0/konk_0.27.0_macOS_arm64.tar.gz"
      sha256 "adedd54e1725676e0fab827ba90e2d62aa053a00baaa64230e1fdee63ff2ad33"

      def install
        bin.install "konk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jclem/konk/releases/download/v0.27.0/konk_0.27.0_macOS_64-bit.tar.gz"
      sha256 "ea96a5a03a6025c6c17b68c79de727950d8830d9980723fb1d4b88a6359a49cc"

      def install
        bin.install "konk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jclem/konk/releases/download/v0.27.0/konk_0.27.0_Linux_arm64.tar.gz"
      sha256 "2c775b49f5dcc300f2ab8f8cf1e8b13436c742bc92936f16141413514ea00283"

      def install
        bin.install "konk"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jclem/konk/releases/download/v0.27.0/konk_0.27.0_Linux_64-bit.tar.gz"
      sha256 "5f52c6977c2ba473202c708a04d84e3065b351f0bc01df043d8fb29c34adbc59"

      def install
        bin.install "konk"
      end
    end
  end

  test do
    system "#{bin}/konk --version"
  end
end
