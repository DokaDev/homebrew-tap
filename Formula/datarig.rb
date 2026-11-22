class Datarig < Formula
  desc "Full-featured database client for the terminal: light, fast, safe"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.7/datarig-v0.41.7-aarch64-apple-darwin.tar.gz"
      sha256 "b94d7bccae0af891a7fe416f943614204a6462f1e592f94d667e18be72245084"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.7/datarig-v0.41.7-x86_64-apple-darwin.tar.gz"
      sha256 "ac2b6e3f08172d366a15f369984006c47ba1cc9da37febc3196474fb82a52317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.7/datarig-v0.41.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "401a440f0c3bfc1aa31c8e06459c99bc34505d786b6b7924d9a7de2e02b84d5c"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.41.7/datarig-v0.41.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8b4198ad2e71e89c69acb9c6ce465ef7dc95220140f8c68ba82bb45ccae90af"
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
