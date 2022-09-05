# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.1"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_x86_64.zip"
    sha256 "96a1e387e4958d6b68fa4944b7dac06e0ff4d9f35097e656ce99055d82994ccc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_arm64.zip"
    sha256 "5e17e400784aaa98950c6bbf806130f8f2565a8a6f9217fcf1ffc61a3ec9eb77"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_x86_64.zip"
    sha256 "959a95d3709e6015f1dbb4e89ff556ee917887e783576dfc5e2c3c4712466ed7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_arm64.zip"
    sha256 "3d35c29010ae7f91242ff8ad097a868f8f9fffeec859476623218802f90673d1"
  end
  def install
    bin.install "allero"
  end
  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation
      \033[35m Usage: $ allero fetch github <owner|owner/repo ...>
    EOS
  end
end
