class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.3/datarig-v0.40.3-aarch64-apple-darwin.tar.gz"
      sha256 "dd33f602cfae70c6110f7ebcb38fe46be8bc0a83d352b1423988a04bbbd5469c"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.3/datarig-v0.40.3-x86_64-apple-darwin.tar.gz"
      sha256 "2c39e4c392a7723e282916b6c977dc3589bebf2fe021720577f8de69a3f44c5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.3/datarig-v0.40.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c47531ee8978ebdf5553bd7e4e21e0761aee5c5629ee79b0bef5ce2b548d8c64"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.3/datarig-v0.40.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47d6cb9f8ce2af430a6326d36214d99b493bfd45536bac50f03e6f940020ef1d"
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
