# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.9"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.9/allero_0.0.9_Darwin_x86_64.zip"
    sha256 "ae3cc154959acba74410e52420b2083e5d06bc3690fed9548927fe55083041a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.9/allero_0.0.9_Darwin_arm64.zip"
    sha256 "949f536eeef199d3fa58e6f9718876e85d8ff480d96784a708beb8ea14994591"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.9/allero_0.0.9_Linux_x86_64.zip"
    sha256 "1c54f729bc137c0f0bcc6f50844c5cd4f1cdffbf4333c6c7b9c0148dd5b51e20"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.9/allero_0.0.9_Linux_arm64.zip"
    sha256 "b0089e198091c3b354d4235f48fc430c61ea5be14214e2aa92655340e517b5d2"
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
