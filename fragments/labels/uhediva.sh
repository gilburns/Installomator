uhediva)
    name="u-he Diva"
    type="pkgInZip"
    downloadURL=https://uhe-dl.b-cdn.net/releases/$( curl -fs "https://uhe-dl.b-cdn.net/releases/" | grep -o "Diva_[0-9.].*[0-9]_Mac.zip" | cut -d\> -f2 )
    appNewVersion=$( echo "$downloadURL" | cut -d_ -f2 | sed 's/./&./g;s/\.$//' )
    appCustomVersion(){
      /usr/bin/defaults read "/Library/Application Support/u-he/Diva/Engine/Diva.engine/Contents/Info.plist" CFBundleVersion 2>/dev/null
    }
    expectedTeamID="5X3525NQ8W"
    ;;
