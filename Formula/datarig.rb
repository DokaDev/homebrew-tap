class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.11.0/datarig-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "64c73ab0fb58b5bd0a9abb01d1f84fb7e119a098e5778165315d831c93d793eb"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.11.0/datarig-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "bbf31d189b41b2086ed9bd6f39190b256d0e9c216bc9c3e583d82e6ec0a7406e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.11.0/datarig-v0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5d4884007e4544f9a0babc86de6e5373fea8bfff9cf3077c499241508cb4b35"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.11.0/datarig-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ebb5c957128a9ce6c049c6149d3bcdbace31b42f759c0033a4353a9b837fadfb"
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
