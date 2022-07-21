* clone this repository
* configure aws `aws configure` and create a profile
* make sure that aws cli works with that profile, you may have to do `aws sso login --profile <your profile>`
* `buildMonitor.html` best works with an auto refresh extension, OR you can refresh the page yourself.
* `open buildMonitor.html` in a browser and start auto refresh
* run `watch -n 60 sh ./getBuildStatus.sh <your profile name>` in terminal and let it run. This command fetches latest build status every 60 seconds.
