class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.2/datarig-v0.21.2-aarch64-apple-darwin.tar.gz"
      sha256 "428e10d77ebe086605358c07e8f4c53726c903cddd257cfea668a999b9ba0787"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.2/datarig-v0.21.2-x86_64-apple-darwin.tar.gz"
      sha256 "67c5915c2ba4ddec016281f271b6ef191380f3c5ee1a32b75fa6997fc2a1c615"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.2/datarig-v0.21.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b033cea1fb170fd40d10b7c20c3c8fa351e500634b0768f08b5853e0150158d"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.21.2/datarig-v0.21.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26578fbdbcd2a7126440a1b0612241d76c5cc0b9b1a2d33f258efeab202e810d"
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
