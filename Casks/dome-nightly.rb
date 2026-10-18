cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "2026.10.18.d3eda9b"
  sha256 arm:   "a09a48efe4e6bb6f256b2e0457dbe28a0fc1438bc47f06cb667656a4a17b23f6"

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
