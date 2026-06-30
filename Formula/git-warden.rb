class GitWarden < Formula
  desc "CLI tool that automatically checks Git commit messages and source code policies"
  homepage "https://github.com/zcube/git-warden"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.6/git-warden_v0.1.6_aarch64-apple-darwin.tar.gz"
      sha256 "f8bc52f3d56a7f6315e9df0bce3a96f4ae3d991ca3cceda4bdf1b1eb1b612d39"
    end
    on_intel do
      url "https://github.com/zcube/git-warden/releases/download/v0.1.6/git-warden_v0.1.6_x86_64-apple-darwin.tar.gz"
      sha256 "42dea43f18e5744dae2cdb6e7e68c8dc0cb8a519c8e9aaeae7241e526f29fcd7"
    end
  end

  def install
    bin.install "git-warden"
  end

  test do
    system "#{bin}/git-warden", "version"
  end
end
