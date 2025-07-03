./build.sh

pushd site
git pull origin gh-pages
# Ensure CNAME file exists
echo "nikubaba.com" > CNAME
git add .
git commit -m "Update site"
git push origin gh-pages
popd
