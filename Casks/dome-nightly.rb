cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.09.27.377e5aa"
  sha256 arm:   "884bd00b594f653115d4c1c4be6888a9152fe18e897e269f22ea95f83e6cf265"

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
