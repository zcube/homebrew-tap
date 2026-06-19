class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "7d42a100a4c7282193c0c0b795bceee1cfb6d235cac43e3a2c3179a4229835d3"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "dee4b5a5c7b0f028a926ef60ccfdadb83d2055e4f79a706153774f56473844f9"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
