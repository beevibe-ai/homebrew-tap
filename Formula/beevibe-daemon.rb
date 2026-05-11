class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.1/beevibe-daemon-darwin-arm64"
      sha256 "44aa4955587ec93cd10d2f7ba14ed605a76573748791db23246a655b3d8eb21a"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.1/beevibe-daemon-darwin-x64"
      sha256 "eb3362d529afd1ce2fad739e7ca1045da0793d752cbec022cdf0cc3c657a3e2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.1/beevibe-daemon-linux-x64"
      sha256 "a18b23b8a0f07940528d9f046ffbae1b14f6350db58a871c9bf1597aabfdb5c1"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.1/beevibe-daemon-linux-arm64"
      sha256 "b17c12ec4a92bc362d120a647d4fcd8ff1d63a07f7303d629bce79a5427a45ae"
    end
  end

  def install
    # The URL above points at a single binary (not an archive);
    # brew downloads it raw into the build dir. Rename into bin/.
    bin.install Dir["*"].first => "beevibe-daemon"
  end

  test do
    system "#{bin}/beevibe-daemon", "--help"
  end
end
