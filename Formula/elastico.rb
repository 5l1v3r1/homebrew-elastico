class Elastico < Formula
  homepage "https://github.com/dutchcoders/elastico"
  url "https://github.com/dutchcoders/elastico.git", :tag => "1.1", :revision => "4228ca86f7bf1e49e0359ddde126b78336de0ade"
  version "1.1"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath


    clipath = buildpath/"src/github.com/dutchcoders/elastico"
    clipath.install Dir["*"]

    cd clipath do
      system "go", "build", "-o", buildpath/"elastico"
    end

    bin.install "elastico"
  end

  test do
    system "#{bin}/elastico"
  end
end
