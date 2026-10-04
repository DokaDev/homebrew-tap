class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.3.0/datarig-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "5daa5d7ab5e35ab0092f943e430eadb94991a107a5bacc1b406eba901a1c2c6d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.3.0/datarig-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "5b98bf292b8f072563b6974849a866a9010577570eb1125b62dfc9d0e8ba0e73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.3.0/datarig-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cade763e5f687d5b7106a0254f411d221d3bccb3fd87f5f92afa97299309baad"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.3.0/datarig-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "539081b416e3321642c01638e56f2ff33478633b49469c4a1c65241ded755c5c"
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
