class Gtpm < Formula
  desc "TPM in Go"
  homepage "https://github.com/Piszmog/gtpm"
  license "MIT"
  version "v1.0.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/gtpm/releases/download/v1.0.0/gtpm_Darwin_x86_64.tar.gz"
    sha256 "6064976ef86ad00f60fd48c1c0d7eb390c053c743e19490ef37c4f5543ed43b8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Piszmog/gtpm/releases/download/v1.0.0/gtpm_Darwin_arm64.tar.gz"
    sha256 "a39055eceb3c20f0cf5d5bdaa226ac8aea77426bcd81d67961c56a62ad99df08"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/gtpm/releases/download/v1.0.0/gtpm_Linux_x86_64.tar.gz"
    sha256 "4e259bfd382a78296d91248e95f03d8d86311f4e7171042b119b761a9ca8de39"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Piszmog/gtpm/releases/download/v1.0.0/gtpm_Linux_arm64.tar.gz"
    sha256 "38442d164c9f8e551708e888854304c17ccd352833680206f1a21ce99c3e0f04"
  end

  conflicts_with "gtpm"

  def install
    bin.install "gtpm"
  end

  test do
    system "#{bin}/gtpm", "-h"
  end
end
