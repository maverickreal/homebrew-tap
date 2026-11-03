cask "ubermensch" do
  version "1.0.5"
  sha256 "1ae8f911df15c891abd404612d5c07f5f560f70b437e8a4f84eee2b1cd68979d"

  url "https://github.com/maverickreal/UberMensch/releases/download/v#{version}/UberMensch_#{version}_aarch64.dmg"
  name "UberMensch"
  desc "Protocol-agnostic focus engine and ambient audio companion"
  homepage "https://github.com/maverickreal/UberMensch"

  # Apple Silicon target
  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "UberMensch.app"

  zap trash: [
    "~/Library/Application Support/com.maverickreal.ubermensch",
    "~/Library/Preferences/com.maverickreal.ubermensch.plist",
    "~/Library/Saved Application State/com.maverickreal.ubermensch.savedState",
  ]
end
