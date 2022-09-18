# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.7"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.7/allero_0.0.7_Darwin_x86_64.zip"
    sha256 "bd3c1aa2222f39ea813e7dd0f81da5debf73d000aab00bb55ac41b725bab35e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.7/allero_0.0.7_Darwin_arm64.zip"
    sha256 "9c466e6b1293dbd76813430d1396597773859168edd7ab5f81a0488c8c268baa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.7/allero_0.0.7_Linux_x86_64.zip"
    sha256 "b0ffc72d4c71dd07e46bd01fe7da650c0a6efe15d150be87c51a963b746147a2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.7/allero_0.0.7_Linux_arm64.zip"
    sha256 "a232a32cbb65e3846ea4b316299c6e0daadbd5d2c1cb78059207086b0f865071"
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
