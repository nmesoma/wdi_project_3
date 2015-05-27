When you create a branch whatever branch you are on, get's copied exactly to the new branch.

To create a branch:

```
git branch <nameofbranch> 
```

Or if you want to create the branch and switch to it.

```
git checkout -b <nameofbranch>
gco -b <nameofbranch>
```

To change branches:

```
git checkout <nameofbranch>
gco <nameofbranch>
```

To check all of the branches:

```
git branch
```

## Merging branches

After working on develop, you want to move the changes to master.

To merge develop to master:

First on develop, we check that there is nothing on master that we don't have:

While on develop:

```
git merge master
```
