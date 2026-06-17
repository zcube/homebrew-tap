class GitversionRs < Formula
  desc "Rust port of GitVersion - semantic versioning from Git history"
  homepage "https://github.com/zcube/gitversion-rs"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.1/gitversion-rs-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "9f67c53d599c0fa8c672753c59f485ae2853eb2cf6e88dd22a3afcd87d690adc"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.1/gitversion-rs-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "1e92ca7776842b56127833d38631b1879b400e018be25c89d37eabb1db9abeff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.1/gitversion-rs-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ecbefe2d7298a242d5b95776774bede944d01d026242836933ecbf2f54ca99c1"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.1/gitversion-rs-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b1e5eafc1a9445149a8b0c79534326d06491fab851f71099714b01ab6c1247c"
    end
  end

  def install
    bin.install "gitversion-rs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitversion-rs --version")
  end
end
