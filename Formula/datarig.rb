class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.1/datarig-v0.38.1-aarch64-apple-darwin.tar.gz"
      sha256 "664730b7be60d0061fe83f107b17ed741d81c8401e7f40d50e9c1a9b1705eef8"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.1/datarig-v0.38.1-x86_64-apple-darwin.tar.gz"
      sha256 "2b93970afe0357c59e1574069ad0d08dbf617587ff2691004197bf26f4868b65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.1/datarig-v0.38.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3aca6e480f90bc18e5b0548fad24bc778fc0c25ae8a69fe52b0aa79c7dcb74b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.1/datarig-v0.38.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65c28fc8ed888324d5bbc27848e7ebe083900d36eaecd5dc0b294627f44bdc1b"
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
