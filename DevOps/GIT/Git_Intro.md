# Git Notes

<img src="https://cdn0.iconfinder.com/data/icons/social-media-2104/24/social_media_social_media_logo_git-512.png" width="100" height="100">

## Introduction - Brief
Git = Control Version System.<br><br>
Files have 3 states:
- commited (aka stored in database)
- modified (aka changed, not commited)
- staged (aka a modified version of the file, marked for the next commit)<br><br>

Each commit has its own unique ID, it is a hash of its containers and its metadata. It must have a perfix of at least 4 chars (unique in repo).
<br><br>

#
## Staging Area
is the virtual space where the changes "go" when we `git add`. It allows the preparation for any `commit`
![git](https://user-images.githubusercontent.com/19435096/66159072-ea48c600-e62f-11e9-9c1f-7b50acceb6fb.jpg)


## Special git files
- .gitignore = file in the main folder which contains a list of files that are ignored by git (so they're not affected by `git add`s and `git status`es). It can contain patterns (`*.pyc`) and paths to files.
