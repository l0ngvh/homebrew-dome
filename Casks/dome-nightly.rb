cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.07.21.33d0fb6"
  sha256 arm:   "54d3297d86f3b8f6929d7fc680ffb6d1c906aa38e11b015c749ded20ff7c32e7"

  url "https://github.com/l0ngvh/dome/releases/download/nightly/dome-nightly-#{arch}.dmg"
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
