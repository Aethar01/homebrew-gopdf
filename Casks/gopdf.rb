cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.5.0"
  sha256 arm:   "293829eca0e3f50a47bc7751ed0252fbb939dad6df1b9bfd5e0e89f498399bf3",
         intel: "89300cd49ec48df96311a7109eeea846ee54aa2d87f7624f70ae635893896250"

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
