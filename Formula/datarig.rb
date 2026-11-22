class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.6/datarig-v0.41.6-aarch64-apple-darwin.tar.gz"
      sha256 "e3e6c9002cbd2fde4084571472fd45e60282a08ed7db369a987bbc888e2c1564"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.6/datarig-v0.41.6-x86_64-apple-darwin.tar.gz"
      sha256 "c803e35c6548d91ab0088e4442f25a98d0f35e652f2ce2acd046e77ffed8c171"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.6/datarig-v0.41.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e058c566cb2c4384e0d7e5e5952a6ef8e982914ed4ecb9a6cb646d225a31db01"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.6/datarig-v0.41.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a22d8d161f6878a3311303fa46eaecec4df8f3e4d3af15518f7cd79c41c34da"
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
