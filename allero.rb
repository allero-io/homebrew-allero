# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.18"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.18/allero_0.0.18_Darwin_x86_64.zip"
    sha256 "455cb96d23d8dcae802b3605bbde8e20dbe5fc594c85e02695608867efc66113"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.18/allero_0.0.18_Darwin_arm64.zip"
    sha256 "0bea0e910ee7d77fdc5da98a1f4917bb722825350ee6a199ff6bb053f932f647"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.18/allero_0.0.18_Linux_x86_64.zip"
    sha256 "febb4e60ce41c1b0a202ba74fff31660f42baca8a45359a98e9200147521fe08"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.18/allero_0.0.18_Linux_arm64.zip"
    sha256 "d308bb1dbaff56ac985bfa3adcf86a3cc2c74d26e92229c214e113b6fb78ffca"
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
