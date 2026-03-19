cask "gotohttp" do
  version :latest
  sha256 :no_check

  url "https://gotohttp.com/gotohttp.dmg"
  name "GoToHTTP"
  desc "Remote access and control software"
  homepage "https://gotohttp.com/"

  installer manual: "Install"
  uninstall script: {
    executable: "/usr/bin/open",
    args:       ["#{staged_path}/Uninstall"],
    sudo:       false,
  }

  livecheck do
    skip "The vendor provides an unversioned DMG with no stable version metadata."
  end
end
