# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.27"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.27/allero_0.0.27_Darwin_x86_64.zip"
    sha256 "ff57c672af922b5ea5e495aa7382d8a09c37be2eba3ccefbdab9908726e480de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.27/allero_0.0.27_Darwin_arm64.zip"
    sha256 "51c9e102409a03be825b83d1b4c56ac717407f2b5df44071adfbddbc7036a34e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.27/allero_0.0.27_Linux_x86_64.zip"
    sha256 "df3af18e3d21db7b99ac0cc5548b382ac15d319bb57cc9d2a857355a9ee30a05"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.27/allero_0.0.27_Linux_arm64.zip"
    sha256 "0fc9d35ea1a7b4a96df9350360836d39ef73891916e1ad135fa505a3dd51aa53"
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
