class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.0/datarig-v0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "f8595bc67e48f1738c132ad31618aad887d738196e1889cd6231ac225cab8b4b"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.0/datarig-v0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "9cd2a3b9f36ee502eb269467e473c71217ce425b53208a2bd330f4e96a5620f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.0/datarig-v0.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bda6975c0e55c33bd319d736f2acac71ebb02fe66a64f9438e303d6c85d1f176"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.37.0/datarig-v0.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "182c89ef5aee2595b5707556d62520105053d01122efb55ff53695a82ecb666e"
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
