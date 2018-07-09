# Deploying a subfolder to GitHub Pages

Sometimes you want to have a subdirectory on the `master` branch be the root directory of a repository’s `master` branch. This is useful for things like sites developed with [Yeoman](http://yeoman.io), or if you have a Jekyll site contained in the `master` branch alongside the rest of your code.

For the sake of this example, let’s pretend the subfolder containing your site is named `dist`.

### Step 1

Remove the `public` directory from the project’s `.gitignore` and remove tree.

```sh
rmdir /S /Q "public" && git branch -D master && hugo --cleanDestinationDir &&  git add public && git commit -m "Update page release" && git subtree split --prefix public/ -b master && git push -f origin master:master
```


### Step 3

Use subtree push to send it to the `master` branch on GitHub.

```sh
git subtree split --prefix public/ -b master && git push -f origin master:master
```

Boom. If your folder isn’t called `public`, then you’ll need to change that in each of the commands above.

---

If you do this on a regular basis, you could also [create a script](https://github.com/cobyism/dotfiles/blob/master/bin/git-gh-deploy) containing the following somewhere in your path:

```sh
#!/bin/sh
if [ -z "$1" ]
then
  echo "Which folder do you want to deploy to GitHub Pages?"
  exit 1
fi
git subtree push --prefix $1 origin master
```

Which lets you type commands like:

```sh
git gh-deploy path/to/your/site
```