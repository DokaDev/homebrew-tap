class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.22.0/datarig-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "e03414d846ed770cd0182b290e14641d04a4324496ff27ad8d0b3921c0778e78"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.22.0/datarig-v0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "8b176af37d1a0d67db94f7f9ed1fcdf7fbc7eadb951f4bae01a96adc3ac6f2a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.22.0/datarig-v0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d94decff587340ca75c0f190858870359a4065021d1baaec43d09f40cecb088b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.22.0/datarig-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9576c4226cb0953030ef7d66ed89944c0b68d8703a67ca5205c675137eac7d98"
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
