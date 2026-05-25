arcbrowser)
    name="Arc"
    type="dmg"
    downloadURL="https://releases.arc.net/release/Arc-latest.dmg"
    appNewVersion=$(curl -fsIL "$downloadURL" | grep -i ^location | tail -1 | sed 's/.*Arc-\([0-9]*\.[0-9]*\.[0-9]*\)-.*/\1/')
    expectedTeamID="S6N382Y83G"
    ;;
