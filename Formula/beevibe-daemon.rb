class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.6/beevibe-daemon-darwin-arm64"
      sha256 "9c1543ffac3a67239032a198f00ecd7aab14fefa9006636b7080aac82a39e8ae"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.6/beevibe-daemon-darwin-x64"
      sha256 "6444ec77b55acc8282a98d6e91a96fa49474ea844a2fde8791e67f20a335de8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.6/beevibe-daemon-linux-x64"
      sha256 "00a0458cd54b500f831b7c5ae827d6b90edfb6b784a8ca63dc8d9b8454f98a8b"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.6/beevibe-daemon-linux-arm64"
      sha256 "060b63b888adeb49201ea9ef27637efb798f7fa8090684d5bc562703457ff14f"
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
