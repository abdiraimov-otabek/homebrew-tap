class Diskreceipt < Formula
  desc "Receipt for the developer caches on your Mac (read-only)"
  homepage "https://github.com/abdiraimov-otabek/diskreceipt"
  url "https://github.com/abdiraimov-otabek/diskreceipt/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "ede3a7870de8207863051c37c19e24f786934e9524218d9f4048a2d63de70e26"
  license "MIT"

  depends_on :macos

  def install
    bin.install "diskreceipt"
  end

  test do
    assert_match "diskreceipt 1.1.1", shell_output("#{bin}/diskreceipt --version")
  end
end
