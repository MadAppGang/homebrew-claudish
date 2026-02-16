cask "claudish" do
  version "4.6.10"

  on_arm do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-arm64"
    sha256 "9efb49a1f471688389bea7b25fbc171123538db0ee6b90a1a05875b428223a02"
  end

  on_intel do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-x64"
    sha256 "e60bcea6f2c509542778e627e6dd054cb135b3573179d2fd123600743a1b857c"
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
