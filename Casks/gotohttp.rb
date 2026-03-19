cask "gotohttp" do
  version :latest
  sha256 "88bcb9658730522dcbeaec5652576a8c050387b2e678ebd63dc2a927bec5faaf"

  url "https://gotohttp.com/gotohttp.dmg"
  name "GoToHTTP"
  desc "Remote access and control software"
  homepage "https://gotohttp.com/"

  installer manual: "Install.pkg"
  uninstall early_script: {
    executable:   "/usr/bin/xattr",
    args:         ["-d", "com.apple.quarantine", "#{staged_path}/Uninstall.pkg"],
    sudo:         false,
    must_succeed: false,
  }
  uninstall script: {
    executable: "/usr/bin/open",
    args:       ["#{staged_path}/Uninstall.pkg"],
    sudo:       false,
  }

  caveats do
    <<~EOS
      If macOS blocks Install.pkg as from an unidentified developer,
      Control-click Install.pkg, choose Open, then click Open again.

      Or install this cask with:
        brew install --cask --no-quarantine gotohttp

      brew uninstall --cask gotohttp will open Uninstall.pkg for removal.
    EOS
  end

  livecheck do
    skip "The vendor provides an unversioned DMG with no stable version metadata."
  end
end
