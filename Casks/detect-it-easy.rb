cask "detect-it-easy" do
  version "3.10"
  desc "Program for determining types of files for Windows, Linux and MacOS."
  homepage "https://github.com/horsicq/DIE-engine"
  sha256 :no_check
  url "https://github.com/horsicq/DIE-engine/releases/download/3.10/die_mac_3.10_x86_64.pkg"

  pkg "die_mac_3.10_x86_64.pkg"

  uninstall quit:    "com.yourcompany.DiE",
            pkgutil: "ntinfo.die"

  livecheck do
    url "https://github.com/horsicq/DIE-engine/releases/latest"
    strategy :github_latest
  end
end
