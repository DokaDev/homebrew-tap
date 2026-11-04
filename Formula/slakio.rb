class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.14/slakio-v0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "b5bbc385dd2cc9af7e3cb3bcb69a0c985c1d2c0c945f3318f8348464efee0c9b"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.14/slakio-v0.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "544f82ddee85fd5ef850bacd847bf574cfb88bd67e647908cbf79d054bfb2b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.14/slakio-v0.0.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0736b978d40e309c866464a0b1e844c32a8fb2d58537de893675d31be3fae361"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.14/slakio-v0.0.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4fa1060d770e3abd1c3d36ec069cbc6b8f3767c2327be54f1036b57033c4d44f"
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
