class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.0.1-rc2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc2/beevibe-daemon-darwin-arm64"
      sha256 "ef75238e7ba4f0ab7b846868ba1f912b162ec72b8c928e748f221139cdabb065"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc2/beevibe-daemon-darwin-x64"
      sha256 "5b58c4f38fa947f34842b662637fc5179580b9ca3d2b917b1fe847e1ffc00c9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc2/beevibe-daemon-linux-x64"
      sha256 "2e2bd9e93a3738286c7191b058e0932298b7fdb17da13c921bc8359fd8c8fd2b"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.0.1-rc2/beevibe-daemon-linux-arm64"
      sha256 "2753672536130f418ef0256398363174357b2c99d8f7a9d19998332530ed04d0"
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
