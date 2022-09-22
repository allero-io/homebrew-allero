# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.16"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.16/allero_0.0.16_Darwin_x86_64.zip"
    sha256 "9f7501c6798ae9b7e647eaa51c781f0e15a5633d84e8f3b261f30b1f2db16425"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.16/allero_0.0.16_Darwin_arm64.zip"
    sha256 "180c69510f115e01cbe8d3c51b6ade026f093eff67b7909c1861b07363a35df1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.16/allero_0.0.16_Linux_x86_64.zip"
    sha256 "19f5062e7c19ee8427f67b14859f2eaf6dfae767dc04e80ddf9b8f0c44045c44"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.16/allero_0.0.16_Linux_arm64.zip"
    sha256 "f3a89053d983a8a41896466e59b0975b4e38a8f69a249b64f575a17299a065fa"
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
