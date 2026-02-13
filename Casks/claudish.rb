cask "claudish" do
  version "4.6.5"

  on_arm do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-arm64"
    sha256 "0ba081d7ea498c1422a8c3a0c3c1f5c4f7b43319076ac0e6cb8c5784a3f91291"
  end

  on_intel do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-x64"
    sha256 "9bf403beb64415a25f92f21f6fe0e61461da905b61bb03dc12fbe33974d23d81"
  end

  name "claudish"
  desc "Run Claude Code with any OpenRouter model"
  homepage "https://github.com/MadAppGang/claudish"

  binary "claudish-darwin-#{Hardware::CPU.arch == :arm64 ? 'arm64' : 'x64'}", target: "claudish"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/.claudish",
    "~/.config/claudish",
  ]
end
