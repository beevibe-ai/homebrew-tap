class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.7/beevibe-daemon-darwin-arm64"
      sha256 "5349d83bfe943f58a11fe3a49df85b0527c639e7dcfc6761e2178b3fed47d05d"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.7/beevibe-daemon-darwin-x64"
      sha256 "c9d2a86ea7ff40a32d99dd719ddee3607a7c0ef4125dbafcfa8ff4e62c75a11f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.7/beevibe-daemon-linux-x64"
      sha256 "43d6b17c4afc74eb6d44941dab866e745029879f7aad3671c25751b92fbb2bca"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.7/beevibe-daemon-linux-arm64"
      sha256 "a87f9108554871bb152fef4601276562b28763c7f611a84a5e6185d4d8745236"
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
