# git-prefix-tags
Simple script to prefix all tags in a repository with `v`.

Git recommends to prefix the tag of each release using [semantic versioning](https://semver.org/) with the letter `v`.
When tagging releases in a version control system, the tag for a version must be `vX.Y.Z` e.g. `v3.1.0`.

This script gets the list of tags from the Git repository, loops through each tag that doesn't start with `v`, and adds the 'v' prefix to it.
The script then creates a new tag with the prefix and deletes the old tag without it.

`1.0` becomes `v1.0` and so on.

## Usage
1. Save the script to a file.
2. Make it executable with `chmod +x git-prefix-tags.sh`
3. Run it with `./git-prefix-tags.sh` in the root directory of the Git repository you want to modify.

Note that this script will modify the repository's tags, so make sure you have a backup or are working with a copy of the repository before running it.
