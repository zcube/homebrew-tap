class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_aarch64-apple-darwin.tar.gz"
      sha256 "e24164eefe4fbdd47b8935649c2066ed39b6ad55ae4a5f453300ec91903aca9d"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.0/git-warden_v0.1.0_x86_64-apple-darwin.tar.gz"
      sha256 "4420538eef16ab17b868b4008897e9958edfc2c6eece3fa3279de567d0a6319c"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
