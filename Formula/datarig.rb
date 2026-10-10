class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.12.0/datarig-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "216e1a31d7cf58bc222f06a92d3f0ae02791c7165435294dd1a08f8a511ae989"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.12.0/datarig-v0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "c88cef405db905e5f0360d804bf21fdff428096d2dd59022e0e4f50b410e8214"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.12.0/datarig-v0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "081b66f0ec2f13d238c46182d026a687630f4da7b9f8b83b5c62b4fcd0239809"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.12.0/datarig-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17903aa2b64940b9e538fb3b4bb3c967f048e2536eba04ffd594f29bf8aa1233"
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
