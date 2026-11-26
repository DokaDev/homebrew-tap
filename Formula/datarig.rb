class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.1/datarig-v0.42.1-aarch64-apple-darwin.tar.gz"
      sha256 "c6cbd96ac8cfbd17257090de7a7f55a7e45875bab7abef8a0b8482e5290a96e0"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.1/datarig-v0.42.1-x86_64-apple-darwin.tar.gz"
      sha256 "529dc82a5b0fbf1742ca1c84d470723e07f256f265826817c4290e3def154281"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.1/datarig-v0.42.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09d514c5aa7b990a343075949b5f3ffa4f6167c7e7d6c989f6607a7fb81f4554"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.42.1/datarig-v0.42.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0526dfc97bdf15b3c49162e499434a3f9195a654dbdde5b9bfbd08dd36d0d7c"
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
