# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.15"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.15/allero_0.0.15_Darwin_x86_64.zip"
    sha256 "7dc1f2701247f6f1f12150a7535d98b9c846189c44d9fedaa25e94c72dfb6930"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.15/allero_0.0.15_Darwin_arm64.zip"
    sha256 "d56cd3057c396e8b1bed5be810bc0aab01c27f24a8c3514188188e4810496a12"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.15/allero_0.0.15_Linux_x86_64.zip"
    sha256 "af406a8f1494785964db8427835ef1aa7d8de4b994bb5c9375b15cb5781562aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.15/allero_0.0.15_Linux_arm64.zip"
    sha256 "69ff256402b4b60db2ed91542b13fc56c2cddad809146c2c88b07f752e27d43c"
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
