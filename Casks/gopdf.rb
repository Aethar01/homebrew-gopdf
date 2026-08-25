cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.4"
  sha256 arm:   "54129ca7b4d78cfc5a8673ed7102318f4dc55d29455fcc5b02a00709314f701c",
         intel: "65a3db43d310c63339d1d9a5d538fa44411052acaec6cac523f438f9a10e29c1"

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
