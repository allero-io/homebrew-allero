# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.12"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.12/allero_0.0.12_Darwin_x86_64.zip"
    sha256 "169bad1af8a1fd0b1c73a1e38c517576ad4ca54eec70242e5b3ff1d16f735d1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.12/allero_0.0.12_Darwin_arm64.zip"
    sha256 "d9615e366dcf134ec3c93ec171eb5ccab6054103922a8d665376000d71531c0c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.12/allero_0.0.12_Linux_x86_64.zip"
    sha256 "84b25c9da8b265486c4a89282d1a234207dd9dbb333c5dbec4d0e507bccbeaaf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.12/allero_0.0.12_Linux_arm64.zip"
    sha256 "5135a0819c7222b76f1908a15f2a963bc37be7fb345f48ecfd50461d2d6bdb8f"
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
