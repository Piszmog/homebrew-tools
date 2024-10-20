class Lopper < Formula
  desc "Deletes dead local Git branches"
  homepage "https://github.com/Piszmog/lopper"
  version "0.2.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/lopper/releases/download/v0.2.1/lopper_0.2.1_macos_x86_64.tar.gz"
    sha256 "b22363d224384dcab9c1802ca91cec3d10b4ed654dfd42fde776113307852fca"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/Piszmog/lopper/releases/download/v0.2.1/lopper_0.2.1_macos_arm64.tar.gz"
    sha256 "eadb6cdfd988b2f1f4b4e69fc18ea8acbf387223f067ce17b71cfba185dccc29"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/Piszmog/lopper/releases/download/v0.2.1/lopper_0.2.1_linux_x86_64.tar.gz"
    sha256 "d1f47329cc575635c52a0d59808c24cb4af89b9776cf6c8082a0c144a054fc11"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/Piszmog/lopper/releases/download/v0.2.1/lopper_0.2.1_macos_arm64.tar.gz"
    sha256 "b42504d1460435f1fc4bf7a64e8e534f8549fab5b2e7756db948049a100100bf"
  end

  def install
    bin.install "lopper"
  end

  test do
    system "#{bin}/lopper", "-h"
  end
end
