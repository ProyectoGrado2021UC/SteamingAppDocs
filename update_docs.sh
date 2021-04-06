export SOURCE_FOLDER=~/workspace/paquita/SteamingApp/streaming-server
export PROJECT_FOLDER=~/workspace/paquita/SteamingAppDocs

cd $SOURCE_FOLDER
echo working on project: $pwd
echo generating docs.
./gradlew asciidoctor
cp -f build/docs/asciidoc/* $PROJECT_FOLDER
cd $PROJECT_FOLDER
echo working on project: $pwd
git add .
git commit -m ':memo: AB#23: actualizar documentacion del proyecto'
git push