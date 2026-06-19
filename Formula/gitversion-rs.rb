class GitversionRs < Formula
  desc "Rust port of GitVersion - semantic versioning from Git history"
  homepage "https://github.com/zcube/gitversion-rs"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.0/gitversion-rs-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6355f3b215cec3273b424d9946633820f1f49639294b9d52cfbadd52f08d6887"
    end
    on_intel do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.0/gitversion-rs-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bc162d72555201983425213384736a6b7adf2ae5a9ca04d87e0ea7f3a28a7500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.0/gitversion-rs-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de3da563a3244fdbadb7817bfee2b1eb8e75851e6d358dab615dfb82d74cfef7"
    end
    on_intel do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.0/gitversion-rs-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f8334657f53141e3cceb9b915e424fa1987c782f5afc49cb0671fd185c6dd18"
    end
  end

  def install
    bin.install "gitversion-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitversion-rs --version")
  end
end
