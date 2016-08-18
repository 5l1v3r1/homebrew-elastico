class Elastico < Formula
  homepage "https://github.com/dutchcoders/elastico"
  url "https://github.com/dutchcoders/elastico/archive/1.0.0.tar.gz"
  sha256 "8e2dde6fe86a338c1b24a83e78cd18da93ef3a1ec2acaf08a37d3cdc9e017325"
  head "https://github.com/dutchcoders/elastico.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    cd buildpath/"src/github.com/dutchcoders/elastico/" do
      system "go", "build", "-o", buildpath/"elastico"
    end

    bin.install "elastico"
  end

  test do
    system "#{bin}/elastico"
  end
end
