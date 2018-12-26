require 'lide.base.init'

print 'Checking if master and hugo-source exists:'
os.execute "git checkout hugo-source"
os.execute "git branch -D master"
os.execute "git branch master"
os.execute "git checkout master"

print 'Executing Hugo:'
os.execute "hugo"

print 'Cleaning no html files:' --> no del public and .git

for file in lide.base.lib.lfs.dir('.') do
    if file ~= "." and file ~= ".." then
        if (file ~= '.git' and file ~= 'public') then
        	if lfs.attributes(file).mode == 'directory' then
        		lide.folder.remove_tree(file)
        	else
        		lide.file.remove(file);
        	end
        end
    end
end

print 'Copying files to rootdir:'
os.execute "xcopy public\\* .\\ /s /e" -- linux "cp -a public/. ./"

-- git commit -a -m "Update public..."
-- git push origin master