class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.26/slakio-v0.0.26-aarch64-apple-darwin.tar.gz"
      sha256 "0f60935de723a2bd22c942c4a5c44aeb815b793841511f2166ea1e47394587b0"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.26/slakio-v0.0.26-x86_64-apple-darwin.tar.gz"
      sha256 "30b0a123b8108293096812cfcf27bbb91ff3851b288133ef511d50d5b394fa80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.26/slakio-v0.0.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cde4e8ed44ed99fcbbb0c2611d05ba608269cb08e36054ae5e06d9241bafca7f"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.26/slakio-v0.0.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87d4c6448abd30c86289d1358cc04e2ca2c0890abde2ef5e9fce98daec48f918"
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
