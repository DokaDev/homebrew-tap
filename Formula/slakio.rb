class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.5/slakio-v0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "328a90c0328f8101ac7213ceb385b24db341180340693df40de1fad55f8ee611"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.5/slakio-v0.0.5-x86_64-apple-darwin.tar.gz"
      sha256 "5d16eba523203bad557a724eed8eaea743597975c311b3a104aac036e1987514"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.5/slakio-v0.0.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcca25d6ba477abe312c62dbce5814daa7c439b5f95ed90990ed04b639545ebc"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.5/slakio-v0.0.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48f020322399ca1c286875c81a76bcedcecc003afd5c4da513d4be77d12e8206"
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
