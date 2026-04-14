cask "dome" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.0"
  sha256 arm:   "PLACEHOLDER_AARCH64_SHA256",
         intel: "PLACEHOLDER_X86_64_SHA256"

  url "https://github.com/longvh/dome/releases/download/v#{version}/dome-#{version}-#{arch}.dmg"
  name "Dome"
  desc "Cross-platform tiling window manager"
  homepage "https://github.com/longvh/dome"

  app "Dome.app"
  binary "#{appdir}/Dome.app/Contents/MacOS/dome"

  caveats <<~EOS
    Dome requires Accessibility permissions. After first launch, grant access
    in System Settings → Privacy & Security → Accessibility.
  EOS
end
