# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.13"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.13/allero_0.0.13_Darwin_x86_64.zip"
    sha256 "b96974800d902a137e13681c4a947d7287cf74f61d65ff5a8bf1056ec6d45e54"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.13/allero_0.0.13_Darwin_arm64.zip"
    sha256 "10b33706a47ae8aebd23e5863fc65521c67b06fc17a0c76daeb4ad002b27d290"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.13/allero_0.0.13_Linux_x86_64.zip"
    sha256 "98cdaf15a2909cdd776d4e80cc28539b4cd890e6f96cc939b57f96fd9635e1bf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.13/allero_0.0.13_Linux_arm64.zip"
    sha256 "659cbb3588ac574495acdc13de85e87d3cdf39ca8451a1ea80f39d9f444f3a32"
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
