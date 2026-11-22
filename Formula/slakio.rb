class Slakio < Formula
  desc "Unofficial terminal client for Slack"
  homepage "https://github.com/DokaDev/slakio"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.22/slakio-v0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "4c9e09667c2b66dfd90554df3b45b4ce5d4957d6b8be0284844d2307c790a8de"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.22/slakio-v0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "b4292eb8e45c512a2bbd84025e55ad1fe3edf59535e1d56479a515dcb4f5b4b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.22/slakio-v0.0.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "719a909557b1e22c94177574a88b7e8f6e107dd1f1ed6495ffe43a5dea8881e8"
    end
    on_intel do
      url "https://github.com/DokaDev/slakio/releases/download/v0.0.22/slakio-v0.0.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "418719688d9f217ee0f430b89fef379a84f87338fd09545efbd68acea18d5405"
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
