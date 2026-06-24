class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.7.0/commit-checker_v1.7.0_darwin_arm64.tar.gz"
      sha256 "b6b72e1aa79bfbdfaad28b49fcef96c346977b8c159eadee80d2d8624661b426"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.7.0/commit-checker_v1.7.0_darwin_amd64.tar.gz"
      sha256 "6aeb89baf52deaf2cfc6c61b2fc34eea114cfb55b1cc1b2ef513098a4efaf5c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.7.0/commit-checker_v1.7.0_linux_arm64.tar.gz"
      sha256 "8c495d9c70971af2ea1be42890caba72cdcbfb267a67e7de5f21ec9a717598fb"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.7.0/commit-checker_v1.7.0_linux_amd64.tar.gz"
      sha256 "6807ec323c33ba8d0ca54389c74adda90a03e61c788b13ead3c2824d206a662f"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
