class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.18.0/datarig-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "ca1614d75cfce9458130c02789ffbbeead14c3307ddaa31dda738f4a85f43c60"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.18.0/datarig-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "531fd82f30ca85348cd177a58c729ffbeee80a51c5d0a88d3d5086bde56efd2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.18.0/datarig-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a5d49f4c9131ae3983a35c185b2fdbf28ecdca28fb4dbb4f29a2b5d5f32a232e"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.18.0/datarig-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e27646165ed1a51d60806e2e57592baafc46526a4f1278b0971b75dba48224b3"
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
