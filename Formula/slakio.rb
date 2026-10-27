class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.6/slakio-v0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "628f67d6ac2cd0cc004b0687fe2075a3b94e5695e6e2089afb667ef8be688d9e"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.6/slakio-v0.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "27d4ca653e8b20f018cf194b322982801c0198fda797eac3feb64b59a44096e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.6/slakio-v0.0.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa37f671114c5bc9ab5ae1c66fd8ad1a63f96b3664456543ee83324d46fcf0b8"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.6/slakio-v0.0.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48dcb0fbe89dca99efbc708f6f2887eff41ea01e36c418108bbbf7b818661049"
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
