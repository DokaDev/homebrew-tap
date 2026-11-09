class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.2/datarig-v0.40.2-aarch64-apple-darwin.tar.gz"
      sha256 "33b7c6692155b33c6a689ac8cd203ab16740708568a6e7867067193b04ccf643"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.2/datarig-v0.40.2-x86_64-apple-darwin.tar.gz"
      sha256 "a4e3d435222b0b2ad4fdbac91dd930eaf9be04c3d5a38eba0667b1a5fd5b18ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.2/datarig-v0.40.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "def3cecded448ae29caa635b1319be47c3f5eb97a3c5280052548eb0b9881816"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.2/datarig-v0.40.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24f0efac890fd0ada6024bef764eba2d464de97d9ec253db925d67d8ecb0d988"
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
