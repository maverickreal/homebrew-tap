cask "ubermensch" do
  version "1.0.7"
  sha256 "c0f464ab17f4cdb7aebaf100db98c20b6fcbd5cc3d3a96dc612b18c493f5d1ec"

  url "https://github.com/maverickreal/UberMensch/releases/download/v#{version}/UberMensch_#{version}_aarch64.dmg"
  name "UberMensch"
  desc "Protocol-agnostic focus engine and ambient audio companion"
  homepage "https://github.com/maverickreal/UberMensch"

  # Apple Silicon target
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "UberMensch.app"

  zap trash: [
    "~/Library/Application Support/com.maverickreal.ubermensch",
    "~/Library/Preferences/com.maverickreal.ubermensch.plist",
    "~/Library/Saved Application State/com.maverickreal.ubermensch.savedState",
  ]
end
