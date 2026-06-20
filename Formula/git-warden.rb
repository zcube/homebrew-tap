class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.5/git-warden_v0.1.5_aarch64-apple-darwin.tar.gz"
      sha256 "fc953523fd3a34958c11ec75b89ed803e5cd60601702082850f4d1ad41a10a1e"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.5/git-warden_v0.1.5_x86_64-apple-darwin.tar.gz"
      sha256 "51cb9a71acd06b0b6d0fad4e1ace8024c7e7dcba91071aa4cf1eb3a52658fc23"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
