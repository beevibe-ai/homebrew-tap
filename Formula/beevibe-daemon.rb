class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.0.1-rc1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc1/beevibe-daemon-darwin-arm64"
      sha256 "009c0a33ebfc6dc076e9bdd0b913d5ba78733d684e2462c1169e548b04474301"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc1/beevibe-daemon-darwin-x64"
      sha256 "b65056af664343c431ea3cd3221f17741cf83c8b07c151094d6d57ed3f0e83f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc1/beevibe-daemon-linux-x64"
      sha256 "c686eae4984ee162adcfbd5998069cf50e1f9731a9fd4daa0e138763bc3f6bfb"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc1/beevibe-daemon-linux-arm64"
      sha256 "c60ad71ce7920406e6e9c80cdfbe7d10b87d17f01892baa18f92c3ec8a841b0a"
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
