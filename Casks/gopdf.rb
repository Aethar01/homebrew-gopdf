cask "gopdf" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.3"
  sha256 arm:   "274dd7798d74f58f29618ee1496b1cb5a08d344f2929392b3917835448bf11fd",
         intel: "a2996bc3efca0fa36b0816ba36c342712b8662b28559d1089304b86657d1d852"

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
