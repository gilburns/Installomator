arturiasoftwarecenter)
    name="Arturia Software Center"
    type="pkg"
    packageID="com.arturia.softwarecenter"
 	appNewVersion=$(getJSONValue "$(curl -fsL 'https://www.arturia.com/api/resources?slugs=asc&types=soft')" '[0].version')
	downloadVersion=$(echo "${appNewVersion}" | tr '.' '_')
	downloadURL="https://dl.arturia.net/products/asc/soft/Arturia_Software_Center__${downloadVersion}.pkg"
    expectedTeamID="T53ZHSF36C"
    ;;