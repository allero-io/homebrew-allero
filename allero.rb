# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.25"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.25/allero_0.0.25_Darwin_x86_64.zip"
    sha256 "04e0843e5d2dba087f616c09396b1990282da45fb8022f979c1e5ba95fbb80d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.25/allero_0.0.25_Darwin_arm64.zip"
    sha256 "1afc1bb79cc370f7d44e14f9d0f4448073330200e93707f78c855f3314ff34b3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.25/allero_0.0.25_Linux_x86_64.zip"
    sha256 "770bd8be12c8d9ec8c852220e016b664b6e7cdc234f708800f217a5b03e6ec1a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.25/allero_0.0.25_Linux_arm64.zip"
    sha256 "3b50e84226ac52acb54ffa1813312a7bb7df1026ad94d07e761e52ef963299b1"
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
