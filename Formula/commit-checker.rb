class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.6.0/commit-checker_v1.6.0_darwin_arm64.tar.gz"
      sha256 "ec4a7e99c63f418f651ec6047ca8eff06ce27295e407967669848801e053899d"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.6.0/commit-checker_v1.6.0_darwin_amd64.tar.gz"
      sha256 "a1213f8499a246ff1e5bbbee51ecf42b989e84d8b707fb293e4d281a60448cdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.6.0/commit-checker_v1.6.0_linux_arm64.tar.gz"
      sha256 "e743875fa772c2f7ce6d706d3764a9b7a2b86d9b7a1867e285b1646cb4aaedb0"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.6.0/commit-checker_v1.6.0_linux_amd64.tar.gz"
      sha256 "18288189a55d12b6def88958f7b92c4af16357b5d782e715f1304eb00bfe9f3a"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
