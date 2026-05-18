class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.3/beevibe-daemon-darwin-arm64"
      sha256 "aab895051dee3b5fd3d26de80a43d69bc3bf3e6a2722ca1762037f7bdb2a2ec6"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.3/beevibe-daemon-darwin-x64"
      sha256 "fb9c4c92cdb7847a081709d6665d3898f941ab0719f23d2678cb583809a1249a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.3/beevibe-daemon-linux-x64"
      sha256 "19f9016cc733bef6cf4844b39b6858b51bdc841d30e6ff387dd4390d23142993"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.3/beevibe-daemon-linux-arm64"
      sha256 "d937efed924a01efdff23361bf537f49d8aa816f4a7324179fb3490361390d05"
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
