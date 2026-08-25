cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.1"
  sha256 arm:   "2ff03d5a537ed863e0a593641371927850b14f200394216fdbb86c4aba8d9cba",
         intel: "f13746a7a8223d21d2761b9f414f1edd98c8277b0df9f1f5d6011e9a38b0dcf4"

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
