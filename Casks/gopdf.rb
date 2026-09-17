cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.1"
  sha256 arm:   "dc5ba2e6a9fda2e3b030547e45a959b291eebcb5d913221b36c76b1f6bbc4a11",
         intel: "4d6f3f615ad26b27feac29f0acd9cbfbd6457dc491e2b39bfdf3da333da1d8cb"

  url "https://github.com/Aethar01/gopdf/releases/download/#{version}/gopdf-#{version}-darwin-#{arch}.dmg"
  name "GoPDF"
  desc "MuPDF-backend PDF viewer written in Go with Lua configuration"
  homepage "https://github.com/Aethar01/gopdf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "GoPDF.app"
end
