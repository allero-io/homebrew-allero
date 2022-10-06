# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.21"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.21/allero_0.0.21_Darwin_x86_64.zip"
    sha256 "0b2fd091a2ffe61f514123340b3b748cdc9a222d9556a05ac44c3a21fe01aed2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.21/allero_0.0.21_Darwin_arm64.zip"
    sha256 "ecaf6fa6a8c4c9c22ac0b2d5e8798c6b09b953b6ffc3323ba18f7c8d22082a3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.21/allero_0.0.21_Linux_x86_64.zip"
    sha256 "ca3ae73f1e461a6da76c819d1918ecef1827b0b4c26d0493492c92504346449c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.21/allero_0.0.21_Linux_arm64.zip"
    sha256 "7c456551f2ed00918a418f5090b5bf1ef812344d0a8b3e6fa995bdef70e78d6c"
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
