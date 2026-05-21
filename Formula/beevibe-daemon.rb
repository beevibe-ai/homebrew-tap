class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.4/beevibe-daemon-darwin-arm64"
      sha256 "6307689cf71ced8bd2cf67ef44f479cb24335162ce54a73e3fc91c49543ebe18"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.4/beevibe-daemon-darwin-x64"
      sha256 "b826adc6a86765f680c024ea1dcda49d34479baa31f4591e7d494df566bfe029"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.4/beevibe-daemon-linux-x64"
      sha256 "ca66a0f45ce168ee56ee067389b7e3492683cf6128a9823c31fca443b3bcf7a6"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.4/beevibe-daemon-linux-arm64"
      sha256 "10fe30561de27a16b045c6ee50927316acc14e998919a62c795e809a189c41ec"
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
