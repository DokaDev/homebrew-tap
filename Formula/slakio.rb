class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.7/slakio-v0.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "31e74ed0ff814f660336b9068863697e3d1e56443a428d459bcae64f426d35c8"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.7/slakio-v0.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "88227321d9800fa3f7cb83478e929874edf4544f9f525ab2039d4949644af01c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.7/slakio-v0.0.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "518c5f8c89b94ba814c518165b04d90ef7d33ca7859422967bc9f26ae0a5c7f6"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.7/slakio-v0.0.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61ef193a713e2acdd26d7bbd57279d3ccc4ee87448e5a33e08cd201aacae9665"
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
