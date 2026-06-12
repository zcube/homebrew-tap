class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.5.0/commit-checker_v1.5.0_darwin_arm64.tar.gz"
      sha256 "51d3caa8f62e452dcf8f081582927030c602a746f9f5193b55df0af906f4a0b2"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.5.0/commit-checker_v1.5.0_darwin_amd64.tar.gz"
      sha256 "c9311a81a6710a6d67a9bf8d98914a74ca95a5c14a5fc58f167e804cdaf78258"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.5.0/commit-checker_v1.5.0_linux_arm64.tar.gz"
      sha256 "909f109fcf947c914edd94ea467f5ceebce467b969de29dc27fadac9b43a0571"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.5.0/commit-checker_v1.5.0_linux_amd64.tar.gz"
      sha256 "df36248ec66a5e591d218e374ffd3fbca9e419f825fb831d2d6164a052ec30f9"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
