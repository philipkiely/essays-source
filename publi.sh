cd ~/Writing/essays
cp $1 ~/Code/web/philipkiely.com/essays-source/content/posts
git add .
git commit -m "autocommit $1"
git push
cd ~/Code/web/philipkiely.com/essays-source/
make html
git add .
git commit -m "autocommit $1"
git push
cp output/*.html ../published-essays
cp output/theme ../published-essays/theme
cd ../published-essays
rm archives.html authors.html categories.html tags.html
git add .
git commit -m "autocommit $1"
git push
