class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "211988919ec9481a16e64f8e5c78616dfc5ae39657eb894578dd069cc3a23b07"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "bfea28a5bce2064f6d6a17e12c0f233a22bd66936f98e865fe0d6171a4fceb14"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
