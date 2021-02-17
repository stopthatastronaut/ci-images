$version = (gc ./.localversion -raw)
$newversion = Read-Host "Current version is $version. Please enter new version"

docker login -u stopthatastronaut -p $env:DOCKER_PASSWORD
docker build -t stopthatastronaut/sizzle-terraform .
docker tag stopthatastronaut/sizzle-terraform stopthatastronaut/sizzle-terraform:$newversion
docker push stopthatastronaut/sizzle-terraform

$newversion.trim() | Out-File ./.localversion