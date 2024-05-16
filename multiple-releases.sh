#!/usr/bin/env bash
set -euxo pipefail

# with  yarn global add ignite-cli@2.2.0
releasesWithOldCli=(
2.0.0
2.0.1
2.0.2
2.0.3
3.0.0
#3.1.0 Can not be created with detox
#3.1.1 Can not be created with detox
#3.1.2 Can not be created with detox
#3.2.0 Can not be created with detox
)

# with  yarn global add ignite-cli
releasesWithNewCli=(
9.0.3
9.0.4
9.0.5
9.1.0
9.1.1
9.2.0
9.3.0
9.3.1
9.4.0
9.4.1
9.4.2
9.4.3
9.4.4
9.4.5
9.4.6
9.5.0
9.6.0
9.6.1
9.6.2
9.6.3
)

#npx yarn global add ignite-cli@2.2.0
#for v in "${releasesWithOldCli[@]}"
#do
#    echo $v
#    ./new-release.sh $v
#done

#npx yarn global add ignite-cli
for v in "${releasesWithNewCli[@]}"
do
    echo $v
    ./new-release.sh $v
done
