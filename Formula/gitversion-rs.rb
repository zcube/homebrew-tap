class GitversionRs < Formula
  desc "Rust port of GitVersion - semantic versioning from Git history"
  homepage "https://github.com/zcube/gitversion-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-rs-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3181d4bf99b63146709b1fe02a4a2b8413caa21b30ba422e89ed89389df49ea2"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-rs-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8015f2b4cfda53cc9b4c8cd94ac7649df37ba7a7b28ff4717f88a9fa837508d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-rs-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c76549717debadff00a0c1423e9ba34f2b4667177800cc7a93706edb8ee8ab85"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-rs-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8aef03a6ad17e224e9f11c9025885d1851195f90cd8c8e70f1ea03031ed7c815"
    end
  end

  def install
    bin.install "gitversion-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitversion-rs --version")
  end
end
