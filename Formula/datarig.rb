class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.1/datarig-v0.39.1-aarch64-apple-darwin.tar.gz"
      sha256 "b4f4aa51773a5a5f0fe19f1dacfaef438a677511f107fbc9a9e0a4d72a2dd359"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.1/datarig-v0.39.1-x86_64-apple-darwin.tar.gz"
      sha256 "6105e269868ded181ac5ddee10b809f4a832eacd8a42809b926d4fb62b25c61c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.1/datarig-v0.39.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08b731c4ae249f36b9a38e00aa4f76b2b444efff0f9f835eed4bf0c7a178edb6"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.39.1/datarig-v0.39.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71c3f0653e6d2cfeb439b0773a1bf88e4e11f53cf443f2c356e17a170485d85f"
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
