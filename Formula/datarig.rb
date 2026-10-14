class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.1/datarig-v0.21.1-aarch64-apple-darwin.tar.gz"
      sha256 "22c686bdfd5ec0625e31750b68cdce4606c7ab6865f85c40d7b5b2b6b0ee53f0"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.1/datarig-v0.21.1-x86_64-apple-darwin.tar.gz"
      sha256 "d2b1e5f6957e6596d11b9ab3448af1f8ea0aa58f7919ee3e0b7f8330934990ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.1/datarig-v0.21.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba40de092b806dfa4e11f23133f9521a6dee4fe2b77be962f62c54d40f2fa48e"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.1/datarig-v0.21.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7921c5c2152589bd674789e7620b81fd81e15c6fa1cfd1289c54f47e0fdd38d8"
    end
  end

  def install
    bin.install "datarig"
    doc.install "README.md", "THIRD-PARTY-NOTICES.html", "licenses"
  end

  test do
    assert_equal "datarig #{version}", shell_output("#{bin}/datarig --version").strip
  end
end
