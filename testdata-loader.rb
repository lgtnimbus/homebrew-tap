# typed: false
# frozen_string_literal: true

class TestdataLoader < Formula
    desc "single binary cli for loading synthetic test data into kafka and postgres"
    homepage ""
    version "1.1.2"
    license "proprietary"
  
    # depends_on "helm"
    # depends_on "kubernetes-cli"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.2/testdata-loader-darwin-arm64"
        sha256 "8d18282a89c27db7fbd5f7c55b67d829784b867d30f48f355dde0b03e1e9e6fd"
  
        def install
          bin.install "testdata-loader-darwin-arm64" => "testdata-loader"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.2/testdata-loader-darwin-amd64"
        sha256 "315769bc0e4e9d82579c15ae86d188aaa82e003af1db08612ef6549653c5f908"
  
        def install
          bin.install "testdata-loader-darwin-amd64" => "testdata-loader"
        end
      end
    end
  
    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.2/testdata-loader-linux-arm64"
            sha256 "05596f0a040e956b04190de70328fe3a59e14bdcc8c99384f1a6057ee1149aa0"
         
            def install
                bin.install "testdata-loader-linux-arm64" => "testdata-loader"
            end
        end
        # homebrew on linux does not support ARM
        if Hardware::CPU.intel?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.2/testdata-loader-linux-amd64"
            sha256 "9f3e98f8b6d6e63be1bf583877b1862d742051101727331181ccd6cbc2e7450a"
    
            def install
                bin.install "testdata-loader-linux-amd64" => "testdata-loader"
            end
        end
    end
end