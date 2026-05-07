class CommitChecker < Formula
  desc "Git commit message and source code policy checker"
  homepage "https://github.com/zcube/commit-checker"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.4.0/commit-checker_v1.4.0_darwin_arm64.tar.gz"
      sha256 "f5ab135df91bb0389375c87060daa3a73df3d9f49f1efdc3d086abd15e1436cf"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.4.0/commit-checker_v1.4.0_darwin_amd64.tar.gz"
      sha256 "40cbfbc876734e3b238d02e4268720d4cf5e3bf0df24a968582d21307eb489cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/commit-checker/releases/download/v1.4.0/commit-checker_v1.4.0_linux_arm64.tar.gz"
      sha256 "147640f6544a80abf7d94c31ceda4ae5a15a9f5697f7347833f263f0e32703e2"
    else
      url "https://github.com/zcube/commit-checker/releases/download/v1.4.0/commit-checker_v1.4.0_linux_amd64.tar.gz"
      sha256 "3a951e6c9c78ffd0c1b9a2cde408633ee327dff228e9014bef7189541d8575e1"
    end
  end

  def install
    bin.install "commit-checker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/commit-checker version")
  end
end
