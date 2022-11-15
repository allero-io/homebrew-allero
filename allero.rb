# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.26"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.26/allero_0.0.26_Darwin_x86_64.zip"
    sha256 "8b9b8af188f5557e364da7c113e3fdfc6cdc22890815e64fc0725fa298a53778"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.26/allero_0.0.26_Darwin_arm64.zip"
    sha256 "6a7bb3f07a3be392f772bf09eedfacc20439d3e65d2e103d8bb90ccd9f0e5427"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.26/allero_0.0.26_Linux_x86_64.zip"
    sha256 "6f53c49372ac266b974225c3013d33da6972cd2852c2af587b7bb2650794ae28"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.26/allero_0.0.26_Linux_arm64.zip"
    sha256 "b363955db0790d405d4bcf9d67a05b79a5d891a28406daf2ba342ec649e36715"
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
