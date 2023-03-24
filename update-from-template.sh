if [ git remote -v | grep -q "https://github.com/OneAnonymizedUser/template-repository" ] ; then
  # remote exists
  :
else
  git remote add upstream https://github.com/OneAnonymizedUser/template-repository
fi
git fetch upstream main
git merge upstream/main --allow-unrelated-histories
git commit -m 'changes from original template'
git push origin main
