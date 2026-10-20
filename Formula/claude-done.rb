class ClaudeDone < Formula
  desc "Notification and sound when Claude Code finishes or needs you"
  homepage "https://github.com/abdiraimov-otabek/claude-done"
  url "https://github.com/abdiraimov-otabek/claude-done/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c419c5950fba195802f5c979b84823fdf092e9f13f9663c4424ef1fac393848e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claude-done"
  end

  def caveats
    <<~EOS
      Turn it on for Claude Code:
        claude-done install
    EOS
  end

  test do
    assert_match "claude-done 1.0.0", shell_output("#{bin}/claude-done --version")
  end
end
