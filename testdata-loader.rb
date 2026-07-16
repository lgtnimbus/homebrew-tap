# typed: false
# frozen_string_literal: true

class TestdataLoader < Formula
    desc "single binary cli for loading synthetic test data into kafka and postgres"
    homepage ""
    version "1.2.0"
    license "proprietary"
  
    # depends_on "helm"
    # depends_on "kubernetes-cli"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.2.0/testdata-loader-darwin-arm64"
        sha256 "29b405f78ee32a023cfe3d01e90cea468bfcd8c2712a9039503926fdc1b36f8f"
  
        def install
          bin.install "testdata-loader-darwin-arm64" => "testdata-loader"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.2.0/testdata-loader-darwin-amd64"
        sha256 "536ef500e56e449c733010ade5085546454b790d8ec0a3d1cfc0fe43ede5cdc6"
  
        def install
          bin.install "testdata-loader-darwin-amd64" => "testdata-loader"
        end
      end
    end
  
    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.2.0/testdata-loader-linux-arm64"
            sha256 "ff5fef1dbbb34d8914b34134bd2abefc3348048fc9fa5442ec743006ed3125b3"
         
            def install
                bin.install "testdata-loader-linux-arm64" => "testdata-loader"
            end
        end
        # homebrew on linux does not support ARM
        if Hardware::CPU.intel?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.2.0/testdata-loader-linux-amd64"
            sha256 "e1741fc377b6fb10a9a2c21fd1fc4dfb8bb5466f06eeea84f8e49fea308f5c60"
    
            def install
                bin.install "testdata-loader-linux-amd64" => "testdata-loader"
            end
        end
    end
end