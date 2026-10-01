cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.10.01.db7f366"
  sha256 arm:   "2ea123c6568d9637ac9745bbab2d398d5d46e9a125a6a23576081754eb2355b0"

  url "https://github.com/l0ngvh/dome/releases/download/nightly-#{version}/dome-nightly-#{version}-#{arch}.dmg"
  name "Dome (Nightly)"
  desc "Cross-platform tiling window manager (nightly build)"
  homepage "https://github.com/l0ngvh/dome"

  postflight do
    system "xattr -d com.apple.quarantine #{appdir}/Dome.app"
    system "xattr -d com.apple.quarantine #{appdir}/Dome.app/Contents/MacOS/dome"
  end

  app "Dome.app"
  binary "#{appdir}/Dome.app/Contents/MacOS/dome"

  caveats <<~EOS
    Dome requires Accessibility permissions. After first launch, grant access
    in System Settings → Privacy & Security → Accessibility.
  EOS
end
