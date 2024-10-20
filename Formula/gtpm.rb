class Gtpm < Formula
  desc "TPM in Go"
  homepage "https://github.com/Piszmog/gtpm"
  url "https://github.com/Piszmog/gtpm/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "dcc161417b4e11e6c058072dac87a1c3c96e6de23b68caa580cf16e300a19233"
  license "MIT"

  depends_on "go" => :build
  depends_on "tmux"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/gtpm", "-h"
  end
end
