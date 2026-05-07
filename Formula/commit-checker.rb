class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.3.0/commit-checker_v1.3.0_darwin_arm64.tar.gz"
      sha256 "0ebe8b345ae2e4116c10dfa0df9897f3569c30a8f9dd7903ea9c1176fcbcf053"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.3.0/commit-checker_v1.3.0_darwin_amd64.tar.gz"
      sha256 "c5a519266f3c7aa3c88d4b043fc9ef6f45721201c457770801909fa4dd3c3edb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.3.0/commit-checker_v1.3.0_linux_arm64.tar.gz"
      sha256 "42007efc162050ea66cb7fdf01c550e5f9b5d21d8c7de6fe3b70340baca73831"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.3.0/commit-checker_v1.3.0_linux_amd64.tar.gz"
      sha256 "9717410f52ed9640dc89c616e6eaaf5f03e0a55aa3416c1a9298bb59a8ceab14"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
