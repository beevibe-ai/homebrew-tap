class BeevibeDaemon < Formula
  desc "Beevibe daemon — runs agent CLIs locally on your machine"
  homepage "https://github.com/beevibe-ai/beevibe"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.8/beevibe-daemon-darwin-arm64"
      sha256 "83579350d06ca2146746430461bf2b2aac67db24dcf5d44599a1aff3d8af7e5b"
    end
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.8/beevibe-daemon-darwin-x64"
      sha256 "a4b9270cc186b9fe921343d3fd9cb8aa0bd8962a7d5c7470670727c8f339a1ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.8/beevibe-daemon-linux-x64"
      sha256 "71c968e889685f30148a2d85a25e3397ca0b856144c30fd5a15543aab82ef4a9"
    end
    on_arm do
      url "https://github.com/beevibe-ai/beevibe/releases/download/v0.1.8/beevibe-daemon-linux-arm64"
      sha256 "f2adae38a8d60fa110640f66c1bad05a1509e9cd7f034b1b529fe698c77c3c7f"
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
