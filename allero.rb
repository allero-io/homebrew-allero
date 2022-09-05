# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.4"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.4/allero_0.0.4_Darwin_x86_64.zip"
    sha256 "198a219956e95bc177f3195ca11e230ba35cb0e74bf329885bd67f0f11ad14a2"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.4/allero_0.0.4_Darwin_arm64.zip"
    sha256 "b76eed0a189c4b7c455282195f2e3d16c47e212402443516f378ac9b4461762b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.4/allero_0.0.4_Linux_x86_64.zip"
    sha256 "c870a199c87d505886f639a126e6514e0f95006190ed719a6f63f912c3a9f364"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.4/allero_0.0.4_Linux_arm64.zip"
    sha256 "70461c55e3c49e31b6536423d5f0f19b311d26e926c7a2d162e241b86c53f142"
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
