class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.2.0/datarig-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "91cba84c1ea862dad8901253cfa88229a9cc7ccea10171e9815f21d5c9c4118a"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.2.0/datarig-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "76d6135995a2b0cb213753168a5312d76d8eae9808a2855bdee8f67685fa7efe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.2.0/datarig-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3dfd258db92cc87e42649d962569d0522ca190e102542a51ca3d1871a51b7c2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.2.0/datarig-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f878cb1aac1857e3c17ccedafa4460cea49f0969f8ae399da39adb874ed5f96"
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
