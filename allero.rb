# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.20"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.20/allero_0.0.20_Darwin_x86_64.zip"
    sha256 "4ea963dd8020ee8f823100dbda08b4caa2db577b9b1febe47323e10aff902e15"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.20/allero_0.0.20_Darwin_arm64.zip"
    sha256 "72f9a6c0b6a3a3e46481279d4bba679fc6a59e98f7b6ff9ea5be71c8320fb95a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.20/allero_0.0.20_Linux_x86_64.zip"
    sha256 "04cad5e8ff2b7302410d8458105a01c241917cfd013b4409805b595e48762a3b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.20/allero_0.0.20_Linux_arm64.zip"
    sha256 "bab5f6546f0d57b5ce90aad778dea1bf2fe50c2be15a5d3e28c149711ea084da"
  end
  def install
    bin.install "allero"
  end
  def caveats
    <<~EOS
      \033[32m[V] Downloaded Allero
      [V] Finished Installation
      \033[35m Usage: $ allero fetch github <owner|owner/repo ...>
    EOS
  end
end
