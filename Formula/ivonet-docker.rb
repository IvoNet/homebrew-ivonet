# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class IvonetDocker < Formula
  desc "IvoNetDocker - IvoNet Docker CLI tools"
  homepage "https://github.com/IvoNet/homebrew-ivonet/"
  url "https://github.com/IvoNet/homebrew-ivonet/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "cf2668de6508aa87db95fa53a08eca78422c9899b719418e65e4bead55ded3fe"


  def install
    bin.install "bin/dig"
    bin.install "bin/docker-make"
    bin.install "bin/docker-project"
    bin.install "bin/docker-ui-project"
  end

  def caveats; <<~EOS
      Most scripts in this install need docker installed.
      If you do not have it installed please run:
      `brew cask install docker`
    EOS
  end
  
end