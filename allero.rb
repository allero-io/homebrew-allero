# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.23"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.23/allero_0.0.23_Darwin_x86_64.zip"
    sha256 "0ed1ee5ad5fa079a34208845a2d2c0a85d56da5f83099c6b673748a5c27a7933"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.23/allero_0.0.23_Darwin_arm64.zip"
    sha256 "a097e953f086ade383c61fee23c2969be31c0602bae9d6c9306733619d0079ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.23/allero_0.0.23_Linux_x86_64.zip"
    sha256 "4e4e68697fed933ffdc0bd4bb94c38526b7508918806ed4a4514fdc1b434a823"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.23/allero_0.0.23_Linux_arm64.zip"
    sha256 "8d79aa49893f03f3ef4ded4b12a9210f07ce9582793b8aab08b36341d7c265e3"
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
