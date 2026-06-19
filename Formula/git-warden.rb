class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.0.1/git-warden_v0.0.1_aarch64-apple-darwin.tar.gz"
      sha256 "3c4e4f761d9254755f582037f74a20deb1c6281831fbe7b65138946aab14348d"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.0.1/git-warden_v0.0.1_x86_64-apple-darwin.tar.gz"
      sha256 "d3b605a722982007c1ad1f03cb26539076a311bae21c04d1aed74218737f32e1"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
