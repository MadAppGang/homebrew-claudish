cask "claudish" do
  version "3.0.4"

  on_arm do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-arm64"
    sha256 "6da423703511813ea7601da4da0798f3b25a2772c75b738a1bd81691cf7cff69"
  end

  on_intel do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-x64"
    sha256 "c67e9c0e53965f08b5ca66813ebf9a8e1003eea931fb2756c55e0b8a2fbcf983"
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
