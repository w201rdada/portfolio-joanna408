#!/bin/sh

# put your info here and uncomment so people know who your commits belong to!
# git config --global user.email "calnet@berkeley.edu"
# git config --global user.name "Oski Bear"

# make sure you're on the master branch
git checkout master

# assuming you've already built it, replace old docs with new _books build
rm -rf docs/ \
&& mv -u -T _book/ docs/ 

# site will be public so dissuade robots and search engines from crawling your page
echo "User-agent: *" > docs/robots.txt \
&& echo "Disallow: /" >> docs/robots.txt

# commit all and push
git add .
git commit -m "deploy"
git status

# interactively enter your password
git push -u origin master