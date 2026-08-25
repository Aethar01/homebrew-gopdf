cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.6"
  sha256 arm:   "e534f4bebc58faaa45933ecbb1b5b4805f1a87f0471e1d7279f12d80474da799",
         intel: "c82f33aa34df83053d7e3a101e0ee5046362c2156bc45ac029cab698d915915d"

  url "https://github.com/Aethar01/gopdf/releases/download/#{version}/gopdf-#{version}-darwin-#{arch}.dmg"
  name "GoPDF"
  desc "MuPDF-backend PDF viewer written in Go with Lua configuration"
  homepage "https://github.com/Aethar01/gopdf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "GoPDF.app"
end
