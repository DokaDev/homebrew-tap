class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.4/datarig-v0.40.4-aarch64-apple-darwin.tar.gz"
      sha256 "a9c5f9ada49dadd0433dfc221c6d694b2484d526c22d4ad87311aaced82fbb40"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.4/datarig-v0.40.4-x86_64-apple-darwin.tar.gz"
      sha256 "beb5e2ca7aebe8474954edff5d62e1050db1aa8d25e35edaf44d023bf21bf88c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.4/datarig-v0.40.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a008535c0c647b68d6369c99e962a20ad3a59b291e71d7313bbed9e3bb50ec18"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.40.4/datarig-v0.40.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37d60a645312c3e1a29440a65086404444434dd9a9cfdea616f3c5a8bc479679"
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
