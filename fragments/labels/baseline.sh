baseline)
    #Use this label if you want Baseline to run immediately upon install
    name="Baseline"
    type="pkg"
    archiveName="Baseline_v[0-9.]*.pkg"
    downloadURL=$(downloadURLFromGit secondsonconsulting Baseline )
    appNewVersion=$(versionFromGit secondsonconsulting Baseline )
    expectedTeamID="7Q6XP5698G"
    ;;
