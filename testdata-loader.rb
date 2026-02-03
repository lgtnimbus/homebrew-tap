# typed: false
# frozen_string_literal: true

class TestdataLoader < Formula
    desc "single binary cli for loading synthetic test data into kafka and postgres"
    homepage ""
    version "1.0.0"
    license "proprietary"
  
    # depends_on "helm"
    # depends_on "kubernetes-cli"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.0.0/testdata-loader-darwin-arm64"
        sha256 "973139b1d67daca5eaba690b96d2affb5f0812ba26e31706a33ba576223f288a"
  
        def install
          bin.install "testdata-loader-darwin-arm64" => "testdata-loader"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.0.0/testdata-loader-darwin-amd64"
        sha256 "16770412aac4486b441721493f3e47c6c4d156c3afc2d7100bed17095a873225"
  
        def install
          bin.install "testdata-loader-darwin-amd64" => "testdata-loader"
        end
      end
    end
  
    on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.0.0/testdata-loader-linux-arm64"
            sha256 "82740ee3286fdfd9aa47522680e3c2c795c229bb010069173685c505fb840ae9"
         
            def install
                bin.install "testdata-loader-linux-arm64" => "testdata-loader"
            end
        end
        # homebrew on linux does not support ARM
        if Hardware::CPU.intel?
            url "https://github.com/lgtnimbus/testdata-loader/releases/download/v1.0.0/testdata-loader-linux-amd64"
            sha256 "f43e933e34efa8b31f8087d5ae61dfab8b6086727f39d96c81eb87064029325d"
    
            def install
                bin.install "testdata-loader-linux-amd64" => "testdata-loader"
            end
        end
    end
end