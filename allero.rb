# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.1"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_x86_64.zip"
    sha256 "86dfc9e48c9eb129177a576d8d133e29a61c695bb1b6becda60c03fdf9c4e086"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_arm64.zip"
    sha256 "a4e95d4f6c57779b1b5e12278f72742044f37d983c5f33ff46cd8f8e2f24505b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_x86_64.zip"
    sha256 "3e606e8b94952fe4d5c66141379180fe4d1e342e34417590775b6376821e357b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_arm64.zip"
    sha256 "4d8c519f99351bfb4c416f8e146f86be3416e1d08f90030b16b5cb871d6b1629"
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
