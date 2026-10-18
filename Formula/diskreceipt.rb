class Diskreceipt < Formula
  desc "Receipt for the developer caches on your Mac (read-only)"
  homepage "https://github.com/abdiraimov-otabek/diskreceipt"
  url "https://github.com/abdiraimov-otabek/diskreceipt/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6fbb80e55200f99bbf391e5f41e1e2a792383561662340c47bbf56f98c16e63f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "diskreceipt"
  end

  test do
    assert_match "diskreceipt 1.0.0", shell_output("#{bin}/diskreceipt --version")
  end
end
