yubicoauthenticator)
    name="Yubico Authenticator"
    type="dmg"
    downloadURL="https://developers.yubico.com/yubioath-flutter/Releases/yubico-authenticator-latest-mac.dmg"
    appNewVersion=$(curl -sI "${downloadURL}" | tr -d '\r' | sed -n 's/^location:.*authenticator-\([0-9.]*\)-mac\.dmg/\1/p')
    expectedTeamID="LQA3CS5MM7"
    ;;
