class Gopdf < Formula
  desc "MuPDF-backend PDF viewer written in Go with Lua configuration"
  homepage "https://github.com/Aethar01/gopdf"
  url "https://github.com/Aethar01/gopdf.git",
      tag:      "0.2.9",
      revision: "4d04e03c6ac32e8840bbbce76b80c5e1538f5d62"
  license "AGPL-3.0-only"
  head "https://github.com/Aethar01/gopdf.git", branch: "main"

  livecheck do
    url "https://github.com/Aethar01/gopdf.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "go" => :build
  depends_on "mupdf"
  depends_on "sdl3"

  on_linux do
    depends_on "pkgconf" => :build
  end

  def install
    if OS.mac?
      inreplace "internal/mupdf/mupdf.go",
                "#cgo pkg-config: mupdf",
                "#cgo !darwin pkg-config: mupdf\n#cgo darwin LDFLAGS: -lmupdf -lmupdf-third -lm"

      ENV.append "CGO_CFLAGS", "-I#{Formula["mupdf"].opt_include}"
      ENV.append "CGO_LDFLAGS", "-L#{Formula["mupdf"].opt_lib}"
    end

    ENV["CGO_ENABLED"] = "1"

    system "go", "build", *std_go_args(
      ldflags: "-s -w -X main.version=#{version}"
    )
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/gopdf -v").strip
  end
end
