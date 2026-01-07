class Rackd < Formula
  desc "Rackd: A device management tool"
  homepage "https://github.com/martinsuchenak/rackd"
  license "MIT"
  version "v1.2.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/martinsuchenak/rackd/releases/download/v1.2.3/rackd_Darwin_x86_64.tar.gz"
    sha256 "e060a14893825693c5d9c35fe17a3765ae86316a1407968d73957f9c2b45e850"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/martinsuchenak/rackd/releases/download/v1.2.3/rackd_Darwin_arm64.tar.gz"
    sha256 "dc6aa059c9a273b280aad428acca476befa702772ec88bf502b7d8c7da008725"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/martinsuchenak/rackd/releases/download/v1.2.3/rackd_Linux_x86_64.tar.gz"
    sha256 "2cced77b6751fd3d8d066140b7071b3195dbc14b74d7a6d02cf5559485c6f29d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/martinsuchenak/rackd/releases/download/v1.2.3/rackd_Linux_arm64.tar.gz"
    sha256 "e2c86188615dd8942ad46ea23d81205e84304244da0da6dd4a931f5cdd5859f0"
  end

  def install
    bin.install "rackd"
  end
end
