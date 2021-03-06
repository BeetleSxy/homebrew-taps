cask "iina-danmaku" do
  version "1.2.0"
  sha256 "94efd91368dab71994f5f9d74588cb511ff643cc668d4e7f3252a5f86918027e"

  url "https://github.com/xjbeta/iina-danmaku/releases/download/v#{version}-Danmaku(16)/IINA.#{version}-Danmaku.dmg"
  name "iina-danmaku"
  desc "带有 Danmaku 支持的 iina"
  homepage ""

  auto_updates true
  depends_on macos: ">= :el_capitan"
  
  app "IINA.app"
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: "iina"
  
  zap trash: [
    "~/Library/Application Scripts/com.colliderli.iina.OpenInIINA",
    "~/Library/Application Support/com.colliderli.iina",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*",
    "~/Library/Application Support/CrashReporter/IINA*.plist",
    "~/Library/Caches/com.colliderli.iina",
    "~/Library/Containers/com.colliderli.iina.OpenInIINA",
    "~/Library/Cookies/com.colliderli.iina.binarycookies",
    "~/Library/Logs/com.colliderli.iina",
    "~/Library/Logs/DiagnosticReports/IINA*.crash",
    "~/Library/Preferences/com.colliderli.iina.plist",
    "~/Library/Safari/Extensions/Open in IINA*.safariextz",
    "~/Library/Saved Application State/com.colliderli.iina.savedState",
  ]
end
