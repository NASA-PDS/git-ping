# 📡 PDS Engineering Actions: Git Ping

This is an [action for GitHub](https://github.com/features/actions) that "pings" a repository branch by creating an empty commit and pushing to a specified branch. This is typically used to just trigger a GitHub action from another action's workflow.


## ℹ️ Using this Action

To use this action in your own workflow, just provide it **with** the following parameters:

- `repository`: The full repository name with owner separated by a slash, such as `nasa-pds/pdsen-corral`.
- `token`: A GitHub personal access token; see the repository's "Settings" tab to generate a fresh token.
- `branch`: The name of the branch to which to send the empty commit.
- `message`: The log message to use with the commit.


## 💁‍♀️ Demonstration

The following is a brief example how a workflow that shows how this action can be used:

```yaml
name: 👩‍🏫 Stable Genius Release
on:
  push:
    branches:
      - master
jobs:
  build:
    name: 👷‍♀️ Build Job
    runs-on: ubuntu-latest
    steps:
      - name: 💳 Check out the code
        uses: actions/checkout@v2
      - name: 🔧 Do something with it
        uses: …
      - name: 📡 Ping the PDS Engineering Corral
        uses: nasa-pds/git-ping-action
        with:
          repository: nasa-pds/pdsen-corral
          token: ${{secrets.ADMIN_GITHUB_TOKEN}}
          branch: master
          message: Stable Genius service upgraded to ${{github.ref}}
```
