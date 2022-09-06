# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.5"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.5/allero_0.0.5_Darwin_x86_64.zip"
    sha256 "eec30e82b7e1ad48dc9ab0721da31d3de370b5b55afd1dc1f9fbaa0841c3420d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.5/allero_0.0.5_Darwin_arm64.zip"
    sha256 "66ea541bf9e9c965dfd148981df7fa44945565dd745d98e20b6d3bedb7350570"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.5/allero_0.0.5_Linux_x86_64.zip"
    sha256 "c3060ba0512607e2593aa74e06c1c407f0c34bc2a7662ae8629632d3a8d9d6b3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.5/allero_0.0.5_Linux_arm64.zip"
    sha256 "d0ae56e36d6a0b7d13984ea2aa7e0acc95721557ce1d635a986dce667c836e3e"
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
