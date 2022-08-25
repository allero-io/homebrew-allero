# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.1"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_x86_64.zip"
    sha256 "3d224ecbc54ad9a04f2e27e4d3a58e54be7cc82a4d043df485a53acbbdfe3fb8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Darwin_arm64.zip"
    sha256 "d95fbf61619c0ddeaf25f0ee331515317f632d1b64fcfaa88d1b0b053f9cdf4d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_x86_64.zip"
    sha256 "a1e53b4aeb7746a3f40ad63029e6fe8e58e0c3e223f82d9f1a8f9758b5c26bc7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.1/allero_0.0.1_Linux_arm64.zip"
    sha256 "faad57e609eaecb05946903a290d51c76dc302ff64361194dc5a424be98fd83c"
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
