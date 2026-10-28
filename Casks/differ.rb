cask "differ" do
  version "0.1.56"
  sha256 "05d6528e1222eb5dc03decedecec9943dc8df152d9f163d6eb4a4af471b6c5be"

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
