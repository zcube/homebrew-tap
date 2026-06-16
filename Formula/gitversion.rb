class Gitversion < Formula
  desc "Rust port of GitVersion - semantic versioning from Git history"
  homepage "https://github.com/zcube/gitversion-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6d9d45a7e511362c65dada7f2af48b7948969f511afb13c77465f01cc426af8c"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7b7cc0460ae4e8e923a35c8ac20457ae7b0c70c6ac60af7f239f9f727195c0ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73eb17d97f0f8f9b7f65802bc00383b08185fb98bb4d50edea50fdee6510b720"
    else
      url "https://github.com/zcube/gitversion-rs/releases/download/v0.1.0/gitversion-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6ea93ed49f54834c826ddc064f59cb536f3d553cb17e37abdad81eeaa6e51ae9"
    end
  end

  def install
    bin.install "gitversion"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitversion --version")
  end
end
