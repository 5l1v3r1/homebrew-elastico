class Elastico < Formula
  desc "Command-line tool for Elasticsearch"
  homepage "https://github.com/dutchcoders/elastico"
  url "https://github.com/dutchcoders/elastico.git", :tag => "1.1.1", :revision => "dfd0de36799fbeda2dd9232f23774ee87d7e1213"

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
