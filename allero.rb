# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.22"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.22/allero_0.0.22_Darwin_x86_64.zip"
    sha256 "55d3bdeda4e7fe8cbd1c97fc1c02bdee634672162a60814428fc38d6fad2d76e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.22/allero_0.0.22_Darwin_arm64.zip"
    sha256 "51d7bd13a29249b29ef58ed254cd80c9b89181a4cdde13aa195d273db0dd5e45"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.22/allero_0.0.22_Linux_x86_64.zip"
    sha256 "3f139668d295b790fc9b1045edb5014ba63e358bb09d5aaf0ccec3e6df592f19"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.22/allero_0.0.22_Linux_arm64.zip"
    sha256 "06bf09912e01cf71a5cade95e454a43731ebcb9905e435e6c8004e98c43a8255"
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
