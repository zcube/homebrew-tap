class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.0.1/git-warden_v0.0.1_aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.0.1/git-warden_v0.0.1_x86_64-apple-darwin.tar.gz"
      sha256 "89929570db2c14c01648a00de0bb73630c680e2c1236515d2ed810557b8d7a75"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
