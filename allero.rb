# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.24"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.24/allero_0.0.24_Darwin_x86_64.zip"
    sha256 "da7462766b91d3108fa77861857d2a0b8fba04dee6b28879b2e22fc39faf456f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.24/allero_0.0.24_Darwin_arm64.zip"
    sha256 "9e29b631e8beb7d2ac4f0192be172e449a94c9692f2c600933aa164037930e2c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.24/allero_0.0.24_Linux_x86_64.zip"
    sha256 "a948386d112b0fe7d4334cea3a229bb9c51ca184c0fc509ad76954a4d53d32ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.24/allero_0.0.24_Linux_arm64.zip"
    sha256 "825369795eaeb440e8d63b4e36f2a8e9a73b0cbb09804fee5a5c006d10b39a97"
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
