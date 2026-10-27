class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.2/slakio-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "eaceaecb872de2fed2d2f382e4724aed6f433fe7ca69f6fc709819da6752c2a0"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.2/slakio-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "dbb785c7f29c6f2cb4c62ffafcce0e936bfb7f619f1d28aae082ea919a70d6e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.2/slakio-v0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ee889829ea95fbbb8c78fd69d08ab7090ef1dc40195787223a16860f5a94a3fa"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.2/slakio-v0.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5121593043ab31e783e4569d28f55134c32a9c7f3090daa82941d32bae02b63"
    end
  end

  def install
    bin.install "slakio"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html"
  end

  test do
    assert_equal "slakio #{version}", shell_output("#{bin}/slakio --version").strip
  end
end
