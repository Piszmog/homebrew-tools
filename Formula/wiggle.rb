class Wiggle < Formula
  desc "Wiggle"
  homepage "https://github.com/Piszmog/wiggle"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/wiggle/releases/download/v1.0.0/wiggle_Darwin_x86_64.tar.gz"
    sha256 "365aa3c47d9c4412015ba4ca203858e2c1d870b71e60aba92420650b113e9593"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Piszmog/wiggle/releases/download/v1.0.0/wiggle_Darwin_arm64.tar.gz"
    sha256 "3408dd0a751bdc6585a4e81a7b465c6b53002616acb9020af601371fb21114b5"
  end

  def install
    bin.install "wiggle"
  end

  test do
    system "#{bin}/wiggle", "-h"
  end
end
