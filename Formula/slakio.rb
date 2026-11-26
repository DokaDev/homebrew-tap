class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.29/slakio-v0.0.29-aarch64-apple-darwin.tar.gz"
      sha256 "c45766df207de4e7179d3f24e59a499c1da37518f68875802f2b0c3c7c33e6c2"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.29/slakio-v0.0.29-x86_64-apple-darwin.tar.gz"
      sha256 "d51e0df0081abb22450b8f07ef99ac2a5ffb0994dfac0cb07eaefe5b4af24f81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.29/slakio-v0.0.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "95159a4458ea32ff9084323ceb9707ac315e357276491f3e35548f61cc6f23a7"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.29/slakio-v0.0.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d1b0da0b460953f405352c587722a80d3b4e1b6acdbc7f27bbf530c39a20dee0"
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
