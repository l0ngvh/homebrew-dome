cask "dome-nightly" do
  arch arm: "aarch64-apple-darwin"

  version "0.0.0.placeholder"
  sha256 arm:   "774160339a96fe41cbb606142e9dfdd7507ce2392bba69de527696c3e61f515a"

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
