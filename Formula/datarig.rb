class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.5.0/datarig-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d35d27fbd252cb3d2cd56fd386cc7155a6a8ec63201b837ae7b8b889815877cc"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.5.0/datarig-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "10ff242cf90b7eb8eafb9a179786c7a863616f4553cc29bf699f648a3fced3ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.5.0/datarig-v0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4966848039b6a33b604ae1fc92c57d69481b6b323feb4f307b90af2dddce12d0"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.5.0/datarig-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e878e23c31caee336b005f340a8f3d8d5246dbf1b3f9b973934379d5592c577d"
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
