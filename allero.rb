# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.8"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.8/allero_0.0.8_Darwin_x86_64.zip"
    sha256 "efc44212ece75549254edfc572c57552105327366a9274212b147f5230b4f9e2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.8/allero_0.0.8_Darwin_arm64.zip"
    sha256 "34a4b3c6a3a111ebca1874229c12c819f74191fea6301a0372630c8e851f8384"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.8/allero_0.0.8_Linux_x86_64.zip"
    sha256 "0a8b441af7abb490936afc597c0324a0a7e6538b76338fe8907a86e94331d62e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.8/allero_0.0.8_Linux_arm64.zip"
    sha256 "9c4b0e75d7ed25f3b8f05e1a9e9610b8178438338a3720f1be304379da6616cd"
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
