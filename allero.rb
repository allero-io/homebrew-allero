# typed: false
# frozen_string_literal: true
class Allero < Formula
  desc ""
  homepage "https://allero.io/"
  version "0.0.6"
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.6/allero_0.0.6_Darwin_x86_64.zip"
    sha256 "3632c8ded407be148a5d6942d1e49c5038f52233c9c7c3ef2514c33572d7cad4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/allero-io/allero/releases/download/0.0.6/allero_0.0.6_Darwin_arm64.zip"
    sha256 "11ab8ea978ca733ae3da3226dc16b181c78d6245d0c198318e72fea3d9f533d5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/allero-io/allero/releases/download/0.0.6/allero_0.0.6_Linux_x86_64.zip"
    sha256 "c489e17692abc1a3fa87409097c281e08225713d2e64024c46a7fa1f135ace43"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/allero-io/allero/releases/download/0.0.6/allero_0.0.6_Linux_arm64.zip"
    sha256 "03f5d216f5b5cbbed09bb4b5531af95c12b8368c37aaca9fa2e71df589ee65e6"
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
