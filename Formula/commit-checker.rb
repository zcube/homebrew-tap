class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.2.0/commit-checker_v1.2.0_darwin_arm64.tar.gz"
      sha256 "8e249e6455fe303e11face4cc3761da8f1f042d97923d9158df05e4353473d5a"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.2.0/commit-checker_v1.2.0_darwin_amd64.tar.gz"
      sha256 "2dceac098e20b2ff6808648cf3c758a0496f64bbacffdc3f87fefff3a0a76842"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.2.0/commit-checker_v1.2.0_linux_arm64.tar.gz"
      sha256 "dcca78855e11e6f3042a08765385cdac19de3dcb7250fde5e81e6ff349caadb0"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.2.0/commit-checker_v1.2.0_linux_amd64.tar.gz"
      sha256 "384b8af252d72c8adcd0e1650e3f6a63bc7cb4cf478fefd45f1033393f1596f6"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
