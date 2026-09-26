# frozen_string_literal: true

# The vist command-line client, prebuilt from davidheijl/vist-app/cli.
class Vist < Formula
  desc "Command-line client for Vist"
  homepage "https://usevist.dev"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.1/vist_darwin_arm64"
      sha256 "baf76f283c81ad20aa67a379df45d823e6696764590cedf2e6a6dfd2707c0428"
    end
    on_intel do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.1/vist_darwin_amd64"
      sha256 "c7894dd8a9eea14181be8809469512091a8a10b4d692cac501eca0989fd76291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.1/vist_linux_arm64"
      sha256 "3824e9de34d5a3961fa5b3dbe0831591218377e634661e639090d60703a797a4"
    end
    on_intel do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.1/vist_linux_amd64"
      sha256 "22a4a9246ccb9726b3947b156f4ec59b560327f916a196a48fad717b867d279b"
    end
  end

  def install
    bin.install Dir["vist_*"].first => "vist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vist version")
  end
end
