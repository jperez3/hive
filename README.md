![Tag-Build-Push](https://github.com/jperez3/hive/workflows/Tag-Build-Push/badge.svg)
# Hive

### General

Description: a simple nginx container


#### Getting started

* Build hive:  `make docker-build`
* Run hive:    `make docker-run`
* Stop hive:   `docker stop hive`
* Remove hive: `make docker-rm`



### Github actions notes
* when using `tbump` from your local machine to increment the version, you can trigger a workflow to start based on the tag. But when you use a workflow to use tbump to trigger another workflow, it doesn't work :sadpanda:
* `tbump` is good because it puts up guard rails on how the version is bumped and makes sure all references to that version in the repo are updated
* Triggering a workflow based on release allows you to add more notes for the release and seems like an alternative to `tbump` that can handle the `rc1` issue. On the other hand, it doesn't provide version replacement for all of the references in the repo
* Since tagging and image building seem to go hand in hand, the workflows can be combined as two separate jobs
* In order to do the tagging via github actions, you need to update the `git config` to include who is making the update

### Resources

* [tbump](https://github.com/TankerHQ/tbump)
* [automating version number updates what could go wrong](https://dev.to/tanker/automating-version-number-updates-what-could-go-wrong-83e)
  * [newer release of article](https://hackernoon.com/lets-automate-version-number-updates-not-a91q3x7n)
* [creating a docker image with github actions](https://www.prestonlamb.com/blog/creating-a-docker-image-with-github-actions)
* [Github Actions: Manual Trigger](https://github.blog/changelog/2020-07-06-github-actions-manual-triggers-with-workflow_dispatch/)
