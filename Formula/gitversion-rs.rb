class GitversionRs < Formula
  desc "Rust port of GitVersion - semantic versioning from Git history"
  homepage "https://github.com/zcube/gitversion-rs"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.4/gitversion-rs-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "c0b9acd0e7e677f6e15872985072c7ed368f2743931e3dd8713422b1ac844183"
    end
    on_intel do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.4/gitversion-rs-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "cb3179c47f8079f5bc5446be3716b5479dde8ced159b02e14218b81d20ed522c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.4/gitversion-rs-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b0d02ed261c493565f62bd643595bb0c14f886486f759123255d0436a8659237"
    end
    on_intel do
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.2.4/gitversion-rs-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ffe330cdd53d30ec009e1ce25d7325884edbafd8d7bf1d87bf73a5cea202185"
    end
  end

  def install
    bin.install "gitversion-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitversion-rs --version")
  end
end
