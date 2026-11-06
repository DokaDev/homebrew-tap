class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.2/datarig-v0.38.2-aarch64-apple-darwin.tar.gz"
      sha256 "92a673052eb84c59de35563ae614ebfc75efd21b5aba98c67f5b8356cf7ad410"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.2/datarig-v0.38.2-x86_64-apple-darwin.tar.gz"
      sha256 "2efbf61aa874d8063503bb49654941525103b4bc4089e2c81a73b92f023dd66a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.2/datarig-v0.38.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c862781e49936dd50341b48ed8702f9f220f8c9b3b7442c7a80d99f73bb8d17a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.38.2/datarig-v0.38.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af460d844adc292617f75656425843fe32e3a48d8f6bc9b797d7ead4621bd6ee"
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
