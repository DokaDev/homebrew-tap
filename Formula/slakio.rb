class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.11/slakio-v0.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "3c182bd44723787310ce22857114719cf5085df563017a5848e7feced8fd8bd2"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.11/slakio-v0.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "d92c5bb3c2f3f5f1b8f6c0713180fe86419b1d23d92d996b3033d51717fd6c21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.11/slakio-v0.0.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41c40ba267c2fa479e09b32f8955583a57594930e67d4b63004436cabdbbc8ea"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.11/slakio-v0.0.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b78fa00559b4144f03254d78baa576269ad3f447ca4622609486238054977981"
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
