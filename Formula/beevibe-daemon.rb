class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.2/beevibe-daemon-darwin-arm64"
      sha256 "46eb825e17a9e3cc1bd801dbe8383db6ab150b2992e842ae6beddc27094994b6"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.2/beevibe-daemon-darwin-x64"
      sha256 "0fab377cae06e79764b51c6efa145104e64ce27dfcfd4e2520adb0f8f108cd22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.2/beevibe-daemon-linux-x64"
      sha256 "80511c659a60de095640027849c3df114526d165aec19e6294e045980ec0c1b8"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.2/beevibe-daemon-linux-arm64"
      sha256 "b78bb9f86a985ec7aba51d59bb31ff07ba18d6cea6c7e00f0d876d04083742bf"
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
