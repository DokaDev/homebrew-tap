class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.13/slakio-v0.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "730afbdbdd054d6c98c629a59a26aed6e9a8ccd0e6aacd64edb1841be23e64ec"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.13/slakio-v0.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "433b2a619cd7c2d9a329309ee0aba5872f31fe71beb9b3fe19b3e2d63d90dc0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.13/slakio-v0.0.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1aff30423f32a0fb4dcbda33eb28dc2e5bdabdb2c5c876e9fb5747019c1fb409"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.13/slakio-v0.0.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f59b2e92ea5e85186b35d94090c7094db8ff9d9a29f13b3ff1d38e624e32df95"
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
