class FASTBuild < Formula
    desc "High performance build system for Windows, OSX and Linux. Supporting caching, network distribution and more."
    homepage "https://github.com/fastbuild/fastbuild"
    version "1.0.4"
    bottle :unneeded
  
    if OS.mac? && Hardware::CPU.intel?
      url "https://fastbuild.org/downloads/v1.04/FASTBuild-OSX-x64-v1.04.zip"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://fastbuild.org/downloads/v1.04/FASTBuild-Linux-x64-v1.04.zip"
    end
  
    def install
      bin.install "fbuild"
    end
  
    def caveats; <<~EOS
      See the Github repository for more information
    EOS
    end
  end