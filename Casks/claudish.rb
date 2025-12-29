cask "claudish" do
  version "3.0.6"

  on_arm do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-arm64"
    sha256 "b6430f84203af551c1d88ac91ed48996614f9a7fe254d0b3f947abec1c7c857f"
  end

  on_intel do
    url "https://github.com/MadAppGang/claudish/releases/download/v#{version}/claudish-darwin-x64"
    sha256 "27177bfa0aa8f147330e068cc6b4c405e8aa56e1a0559fb8032be8acd7f9a664"
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
