cask "differ" do
  version "0.1.52"
  sha256 "0325dc2e240de0147bcd3c9db3cccf2e96cac9c393531829049e79015901d8da"

  url "https://github.com/federicosandrelli/differ/releases/download/v#{version}/differ_#{version}_aarch64.dmg"
  name "differ"
  desc "Pull request viewer for agent-written code"
  homepage "https://github.com/federicosandrelli/differ"

  depends_on arch: :arm64
  depends_on formula: ["python@3.13", "gh"]
  depends_on :macos

  app "differ.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/differ.app"]
  end

  zap trash: [
    "~/.cache/diff-review",
    "~/Library/Caches/com.federicosandrelli.differ",
    "~/Library/Logs/differ",
    "~/Library/WebKit/com.federicosandrelli.differ",
  ]
end
