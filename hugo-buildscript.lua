print 'Checking if master and hugo-source exists:'
os.execute "git checkout hugo-source &&"
os.execute "git branch -D master &&"
os.execute "git branch master &&"
os.execute "git checkout master &&"

print 'Executing Hugo:'
os.execute "hugo"

print 'Cleaning no html files:'
os.execute "rm -rfv !(".git"|"public")"

print 'Copying files to rootdir:'
os.execute "cp -a public/. ./"