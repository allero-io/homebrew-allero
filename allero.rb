# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.10"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.10/allero_0.0.10_Darwin_x86_64.zip"
    sha256 "8aeceeeb1b329b969c2caa933728a8bfd98f7a2ed6515870141b94fea5083e75"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.10/allero_0.0.10_Darwin_arm64.zip"
    sha256 "817d2f58cb20e0a5f4d1637df7772bb976130d80d6a6c882d3e273b837c57980"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.10/allero_0.0.10_Linux_x86_64.zip"
    sha256 "c02bd5130c880c427b8d0a3c130f9b6f2eccaed08718484b7e05842d7cebfa17"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.10/allero_0.0.10_Linux_arm64.zip"
    sha256 "da7d0c0a28a117388259d07ca63d108c98cf7af7abbc1ac2f4b6b242c390244d"
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
