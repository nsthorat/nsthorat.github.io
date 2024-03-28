./build.sh

pushd site
git pull
git checkout -- CNAME
#git add .
#git commit -m "Update site"
#git push origin gh-pages
popd
