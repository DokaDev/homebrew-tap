class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.0/datarig-v0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "4ef6107d352951b8d821eddf7668942ad3a0a29ad858f2e15099d9b4f413f88b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.0/datarig-v0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "2039e2e04fecf5071b2ca472a9939eb533d9a0b02b8a8252ff3ddfd76473e00a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.0/datarig-v0.42.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e885a8d6a35c0ac7327ae4122943f0d500e36be17f3a1b9166f40198ec4fc09"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.0/datarig-v0.42.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f589ddba0e99728fe29af243155ee853806102aa749cd073787fafce476f53ea"
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
