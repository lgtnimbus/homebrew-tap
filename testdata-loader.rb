# typed: false
# frozen_string_literal: true

class TestdataLoader < Formula
    desc "single binary cli for loading synthetic test data into kafka and postgres"
    homepage ""
    version "1.1.1"
    license "proprietary"
  
    # depends_on "helm"
    # depends_on "kubernetes-cli"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.1/testdata-loader-darwin-arm64"
        sha256 "0d391b5b5a5c9f67912e525dc73d8f0e87714be7f27c27c79bb081cfde74ca12"
  
        def install
          bin.install "testdata-loader-darwin-arm64" => "testdata-loader"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.1/testdata-loader-darwin-amd64"
        sha256 "246aeb71e76253c42c343a607bb7a1c96b1c66f98cb124e3377a4f35295f19d9"
  
        def install
          bin.install "testdata-loader-darwin-amd64" => "testdata-loader"
        end
      end
    end
  
    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.1/testdata-loader-linux-arm64"
            sha256 "803cea717996f94fcd95e6aa7c87275712cd08ce6eb0d56c9d55738b5e21ffdb"
         
            def install
                bin.install "testdata-loader-linux-arm64" => "testdata-loader"
            end
        end
        # homebrew on linux does not support ARM
        if Hardware::CPU.intel?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.1.1/testdata-loader-linux-amd64"
            sha256 "bb16a55aa43894aa0d444a8251f01297d4b6b2be3a1a694cb08646efef2b8c5a"
    
            def install
                bin.install "testdata-loader-linux-amd64" => "testdata-loader"
            end
        end
    end
end