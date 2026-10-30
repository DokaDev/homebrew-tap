class Datarig < Formula
  desc "Terminal database client with a DataGrip-style workspace"
  homepage "https://github.com/DokaDev/datarig"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.0/datarig-v0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "3a4255327fc6cfa2cfe0e5cd74d799d75ccfa20500d120d813123b5b8ce94cd2"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.0/datarig-v0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "2c76530b61550657f4846779a83fd22441839e8fbd12825d481ee9862a2efd80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.0/datarig-v0.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fc239adb89cd364af7ff98480f7e0b19eef6c348bb643bd14b33b36bd94ce44"
    end
    on_intel do
      url "https://github.com/DokaDev/datarig/releases/download/v0.36.0/datarig-v0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9354518751118e661fb97bfe8d42efd1c483156a4ac8b2e2f5596eb4430a973e"
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
