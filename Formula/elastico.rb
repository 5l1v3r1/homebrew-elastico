class elastico < Formula
  homepage "https://github.com/dutchcoders/elastico"
  url "https://github.com/dutchcoders/elastico/archive/v1.0.0.tar.gz"
  sha256 "b6a16313ac64cbe8fadc2284ca537973854f1a608eea3b170fcf369e4e240821"
  head "https://github.com/dutchcoders/elastico.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    mkdir_p "src/github.com/dutchcoders/"
    ln_s buildpath, "src/github.com/dutchcoders/elastico"

    system "go", "get", "github.com/constabulary/gb/..."
    system "gb", "build", "-o", "elastico"

    bin.install "elastico"
  end

  test do
    system "#{bin}/elastico", "brew.sh"
  end
end
