# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.14"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.14/allero_0.0.14_Darwin_x86_64.zip"
    sha256 "ef7fa978e71ea49c50479a13c5af005dd0d14ff0375f6627991c51031de58d76"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.14/allero_0.0.14_Darwin_arm64.zip"
    sha256 "e23f5f454b2d123f6fee686aac3d97a39232eca473b966da6bb19b7e7a1002e0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.14/allero_0.0.14_Linux_x86_64.zip"
    sha256 "4c1dad70841de7c499800a65b060d0c393efa5d583f62c311aca856555d9cc31"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.14/allero_0.0.14_Linux_arm64.zip"
    sha256 "dad7e99e2360d0b97261882b50bbbc804ceaf5dca0c72c4f433cd5cd2bad481d"
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
