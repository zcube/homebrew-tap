class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.1.1/commit-checker_v1.1.1_darwin_arm64.tar.gz"
      sha256 "195ec7bfd68a0050066a602a394da8a1c2011e4697718c129063f58fec7d1523"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.1.1/commit-checker_v1.1.1_darwin_amd64.tar.gz"
      sha256 "e457e2c34a955da2ffa34b2d9736a0afbf67592a92f7933258f3788383ef56ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.1.1/commit-checker_v1.1.1_linux_arm64.tar.gz"
      sha256 "17c6ba980ed3131fced25d5e8cae154500a2bae1f2fd4d1503b89a762786ac10"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.1.1/commit-checker_v1.1.1_linux_amd64.tar.gz"
      sha256 "09944abaa5cda0d330ee64cac6b7c55a638a23221bc3c912e8d2118b98b597ed"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
