cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.08.27.bd8d03b"
  sha256 arm:   "4025b953a6d7f02f517bdec4eb3b2c991fe6cf6d9de434af28e9c936c412cc7c"

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
