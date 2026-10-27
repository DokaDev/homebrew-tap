class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.3/slakio-v0.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "295a8995bb539aa0ccc2737d33e17b3b8a6477406d038b733f172dff02593e71"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.3/slakio-v0.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "6907689b20e375ede7c396acbda33bf0d84721ca5f51f0ae75224f6ea15e4ff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.3/slakio-v0.0.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "69756e89db7eff23b677d45ed3353b38939cf3989bb660488e45ded0b8bc5515"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.3/slakio-v0.0.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de40d79e13e9b522c20c45683224d054585e74716941267f23ad5275caa6ac68"
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
