connectfonts|\
extensisconnect)
    name="Connect Fonts"
    type="dmg"
    connectFontsFeed=$(curl -fsL "https://links.extensis.com/suitcase/sparkle?language=en&platform=mac&version=29.0.0")
    downloadURL=$(echo "$connectFontsFeed" | xpath '(//rss/channel/item/enclosure/@url)[1]' 2>/dev/null | cut -d '"' -f2)
    appNewVersion="$(echo "$connectFontsFeed" | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[1]' 2>/dev/null | cut -d '"' -f2).$(echo "$connectFontsFeed" | xpath '(//rss/channel/item/enclosure/@sparkle:version)[1]' 2>/dev/null | cut -d '"' -f2)"
    appCustomVersion(){ if [ -e "/Applications/Connect Fonts.app/Contents/Info.plist" ]; then echo "$(defaults read "/Applications/Connect Fonts.app/Contents/Info.plist" CFBundleShortVersionString).$(defaults read "/Applications/Connect Fonts.app/Contents/Info.plist" CFBundleVersion)"; fi }
    expectedTeamID="J6MMHGD9D6"
    ;;
