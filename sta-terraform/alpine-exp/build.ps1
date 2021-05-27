$version = (gc ./.localversion -raw)
$newversion = Read-Host "Current version is $version. Please enter new version"

docker login -u stopthatastronaut -p $env:DOCKER_PASSWORD
docker build -t stopthatastronaut/sta-terraform .
docker tag stopthatastronaut/sta-terraform stopthatastronaut/sta-terraform:$newversion
docker push stopthatastronaut/sta-terraform

$newversion.trim() | Out-File ./.localversion