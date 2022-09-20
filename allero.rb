# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.11"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.11/allero_0.0.11_Darwin_x86_64.zip"
    sha256 "c3da4e95216f126b7b7342a46d758877d1f9d460796f7f06484c899bd1bb261f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.11/allero_0.0.11_Darwin_arm64.zip"
    sha256 "c405ef350cbf3634a109461e51b7a188ca1e64c16838e643286e45edf06d1ba2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.11/allero_0.0.11_Linux_x86_64.zip"
    sha256 "08dc03a1832fad4b6c7cb8616a7143bb727706f2a5fdd23b4a6adc3aa9997f59"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.11/allero_0.0.11_Linux_arm64.zip"
    sha256 "35f596ffd3edcfacd51eb6add17bd6a8657f8d0d28d46ebc745fd901c45d3c3b"
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
