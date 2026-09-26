# frozen_string_literal: true

# The vist command-line client, prebuilt from davidheijl/vist-app/cli.
class Vist < Formula
  desc "Command-line client for Vist"
  homepage "https://usevist.dev"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.0/vist_darwin_arm64"
      sha256 "2f14fc497492c393be398c7a711893b1fa1a24f611e1902eb1210dcdd6b640ca"
    end
    on_intel do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.0/vist_darwin_amd64"
      sha256 "a69daf12639aa2a8fd1472dad233ce823a1227e909057c7cee1811073ad4815f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.0/vist_linux_arm64"
      sha256 "c7ee305516b420efa7a421f6fd0ae4cff5dbc90998c3603c2ec995bcbaa8f090"
    end
    on_intel do
      url "https://github.com/davidheijl/vist-releases/releases/download/cli-v0.1.0/vist_linux_amd64"
      sha256 "28103d14d0bfae44b12a7fa91c13baf466ffd137b26a800b72cf3415ff3d93b1"
    end
  end

  def install
    bin.install Dir["vist_*"].first => "vist"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vist version")
  end
end
