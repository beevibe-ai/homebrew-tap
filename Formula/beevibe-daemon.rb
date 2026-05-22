class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.5/beevibe-daemon-darwin-arm64"
      sha256 "381c95888cbf495fe50e6f218836a26201ca55407ecb07c63444a1d801fb053b"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.5/beevibe-daemon-darwin-x64"
      sha256 "a50bca7360d0cb11c622bdfb87e876d927051a2b7f75fb8c71c4515174e68a80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.5/beevibe-daemon-linux-x64"
      sha256 "4307a306c775b005142b5bcfc52a3d8745b460e82a0ee9ff6e394aac1a4edb6f"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.5/beevibe-daemon-linux-arm64"
      sha256 "acbbe3238edd24c2aca594d028fa096c83bf5fd68b4b824dff63ffca6228b135"
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
