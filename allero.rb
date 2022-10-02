# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.19"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.19/allero_0.0.19_Darwin_x86_64.zip"
    sha256 "82631322dbf06cdd56918acacd75a53558d6940f2b5b3f5951012afe1f6d9af9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.19/allero_0.0.19_Darwin_arm64.zip"
    sha256 "2e39ed0854c68750917e208b30dc12b30177b11f0d1b811e9db65f1bf74ee647"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.19/allero_0.0.19_Linux_x86_64.zip"
    sha256 "2162ae5b79b2e3ceea3b41e5153f0d5385d51b4b3800ecd1017231a415dfd94d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.19/allero_0.0.19_Linux_arm64.zip"
    sha256 "a5e7a65772b58ca5f8a95dda9c2fc7522018f39ff74e546a594da904aa4d1c87"
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
