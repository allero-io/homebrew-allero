# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://www.allero.io/"
  version "0.0.17"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.17/allero_0.0.17_Darwin_x86_64.zip"
    sha256 "c9f7220534cdd696db967897a9a6dca192fea7dcadf501474900acbb9e4cd953"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.17/allero_0.0.17_Darwin_arm64.zip"
    sha256 "4d0992664d14fd64de8eaf3fdd0596cd9a4e561c38d7fb1ed688528c69c68ba9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.17/allero_0.0.17_Linux_x86_64.zip"
    sha256 "98a15c9446bc05bb5a712a91aa73d65ef780601741f56462567185d6b73fe4fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.17/allero_0.0.17_Linux_arm64.zip"
    sha256 "c9c7ff7af16a02d2e4541d3d66179eb0a262807ac7d84fe0544122b959d3fc42"
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
