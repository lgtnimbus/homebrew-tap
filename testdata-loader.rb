# typed: false
# frozen_string_literal: true

class IsynthCli < Formula
    desc "single binary cli for loading synthetic test data into kafka and postgres"
    homepage ""
    version "0.21.6"
    license "proprietary"
  
    # depends_on "helm"
    # depends_on "kubernetes-cli"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v0.21.6/testdata-loader-v0.21.6-darwin-arm64"
        sha256 "14fd8c88f4dae4ebca652a7e34daa93d955e145b97d03dda098f2398267f75fc"
  
        def install
          bin.install "" => "testdata-loader"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v0.21.6/testdata-loader-v0.21.6-darwin-amd64"
        sha256 "bbac1a5c67a531009d4b52ca9ea1e23de0713183ca5cd7f74bc08f0976092bc3"
  
        def install
          bin.install "" => "testdata-loader"
        end
      end
    end
  
    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v0.21.6/testdata-loader-v0.21.6-linux-arm64"
            sha256 "c63438f205b8e86bad82e88e65b856b3f0b24f074addb85411931ba51a6cfe52"
         
            def install
                bin.install "" => "testdata-loader"
            end
        end
        # homebrew on linux does not support ARM
        if Hardware::CPU.intel?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v0.21.6/testdata-loader-v0.21.6-linux-amd64"
            sha256 "07e1a63d2f27724f248a0e7bc1109dbc96ca9ea262915bfa1ce28099a8d961c6"
    
            def install
                bin.install "" => "testdata-loader"
            end
        end
    end
end