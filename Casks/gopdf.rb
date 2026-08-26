cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "536037d9694813ab5fef81ea7a40f091a20727f434067d50a4a3b9cc4d40a8f8",
         intel: "21a513ac816d348fc37c1519c52df3b1fff9113363e6fce1ce73b4905519f8e9"

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
