class Diskreceipt < Formula
  desc "Receipt for the developer caches on your Mac (read-only)"
  homepage "https://github.com/abdiraimov-otabek/diskreceipt"
  url "https://github.com/abdiraimov-otabek/diskreceipt/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "d3327ebfaf52c2a036bbbc9d4fe0f3f090922e3da7a5bd48cfbb963c4effd36b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "diskreceipt"
  end

  test do
    assert_match "diskreceipt 1.1.0", shell_output("#{bin}/diskreceipt --version")
  end
end
