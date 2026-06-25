class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.8.0/commit-checker_v1.8.0_darwin_arm64.tar.gz"
      sha256 "f78d8a302beb7864543105640f3bf8030562b20d29362ebf0cf6a7df3bd32cc7"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.8.0/commit-checker_v1.8.0_darwin_amd64.tar.gz"
      sha256 "21497f0cb0932723553de03ca084777ce5d3e1096a0519c6369da030ebbe0e65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.8.0/commit-checker_v1.8.0_linux_arm64.tar.gz"
      sha256 "dd4b0139f82f05a2898d80cb480a2acc0dd2bfc58b8a2404bd15aac45ac430c3"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.8.0/commit-checker_v1.8.0_linux_amd64.tar.gz"
      sha256 "9fc37a6d2816cfdb03e49d1dcf8f14747be98aaafc8ead1b7cc6a1b2dce4e710"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
