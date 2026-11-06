class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.3/datarig-v0.38.3-aarch64-apple-darwin.tar.gz"
      sha256 "02296bc82b7c93a7913787cf6f1651e028dfbbe32f32f13a098fb1e001e09f87"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.3/datarig-v0.38.3-x86_64-apple-darwin.tar.gz"
      sha256 "f78a3e0256929d45f3f1febc7d42d3345249a45909801128d8ee377bc4de46e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.3/datarig-v0.38.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b924924e0b272b896d0a495c87905ecda5d87a406d605083d0c3545172d12c3b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.3/datarig-v0.38.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a55c6d6fdb5297f92529b828903d5a113278b36736dd9163c83e64fda1b8182b"
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
