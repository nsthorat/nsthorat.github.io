./build.sh

pushd site
git add .
git commit -m "Update site"
git push origin main
popd
