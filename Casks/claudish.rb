cask "claudish" do
  version "4.0.7"

  on_arm do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-arm64"
    sha256 "fa3031c902a8fe401d6c62fe3a745fe0087b771bc69aae341e68be876bc92fea"
  end

  on_intel do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-x64"
    sha256 "ef43604c22ae624c54e9fce4df96b673f4e91eee7ee51f931351b3b3b85f648e"
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
