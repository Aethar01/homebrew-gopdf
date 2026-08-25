cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.5"
  sha256 arm:   "c82220ccb15348c39bcf8df06343451f69abe913b09b9c56586d9ca1cdfed69d",
         intel: "60ae324ea8bc0a2fc5a39f81485fc763883d3a543378ef4db2b929a8c0d36c65"

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
