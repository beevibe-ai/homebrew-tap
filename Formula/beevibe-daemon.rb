class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.0/beevibe-daemon-darwin-arm64"
      sha256 "c5b46f6d05859a38c040675ef156fdfb1a5f3a6e2eb7aca8da36a2eb51a5e768"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.0/beevibe-daemon-darwin-x64"
      sha256 "494c3c42ef70b3213103b2a18ac5dbeb9b2bd38d59b370db061219e620f520a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.0/beevibe-daemon-linux-x64"
      sha256 "502035d77dae19132f25bb0466e0d54c18134fb02e46b4c140c51a59cd0b084e"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.0/beevibe-daemon-linux-arm64"
      sha256 "e31fdff38f14e81b55440c381bc84c8bfe7d7824e12ed677953c19c39490fd5e"
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
