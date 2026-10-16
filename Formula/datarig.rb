class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.0/datarig-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "d9f41aaf80c13824a3754d86ddb8ef2dda10b8de69ae1483d5abee5b969c22e4"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.0/datarig-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "490ff3b75ecef3c9f9b908cf1dabf7b8d700436a47b64ec5dfa7032bc31ba638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.0/datarig-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e69115260ed15b5c373ad1ca70ca62961903bf39f235299ddb1d0e27ef47fd30"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.26.0/datarig-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff88096a0b3362ff46c880affcad16d64f7ff23b2dab724c0e3d96e4df135cf9"
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
