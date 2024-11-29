class Wiggle < Formula
  desc "Wiggle"
  homepage "https://github.com/Piszmog/wiggle"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/wiggle/releases/download/v1.0.2/wiggle_Darwin_x86_64.tar.gz"
    sha256 "7f6a759ea485ba0e88286c10ac15670f3f9d36e559e6f64715c08a0c143496b1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Piszmog/wiggle/releases/download/v1.0.2/wiggle_Darwin_arm64.tar.gz"
    sha256 "6ccd7cd26e05c2ae87d13d7d85345b42d82b393b9be82ca882059955c20f9841"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/wiggle/releases/download/v1.0.2/wiggle_Linux_x86_64.tar.gz"
    sha256 "636653d16b0ec133be4ff77f990052fd509ef54947ea7a2fac856bb2eb3ab76c"
  end

  def install
    bin.install "wiggle"
  end

  test do
    system "#{bin}/wiggle", "-h"
  end
end
