class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.4/slakio-v0.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "f70561b3922ef10251f2cd444c1c5f65e0b3db93fcfab90aa0adea01f49c760b"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.4/slakio-v0.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "020de401e10a1534ae7a31defa3fbe338603723947d3954a42580d1e979ec5e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.4/slakio-v0.0.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fc4e98bee57f6e0c73d71e2f7b9831e2c68cd394659754592f54466e2d8b6f6"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.4/slakio-v0.0.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4efb0ba05af3d3c4409fb4479241bbaa97682560bd131cbc9b080fb69480a670"
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
