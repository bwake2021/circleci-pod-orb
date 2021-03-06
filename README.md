# CocoaPods Orb

[![CircleCI Build Status](https://circleci.com/gh/xxKRASHxx/circleci-pod-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/xxKRASHxx/circleci-pod-orb) [![CircleCI Orb Version](https://badges.circleci.com/orbs/pod/pod.svg)](https://circleci.com/orbs/registry/orb/pod/pod) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/xxKRASHxx/circleci-pod-orb/master/LICENSE) [![CircleCI Community](https://img.shields.io/badge/community-CircleCI%20Discuss-343434.svg)](https://discuss.circleci.com/c/ecosystem/orbs)


This orb wrapps [cocoapods](https://cocoapods.org) and makes it handy to use in CircleCI.  
Allows controll all basic functionality used during installation process.  
Wrapps caching mechanism to improve build time.  

## Examples

Commands are pretty much the same as if you used them from the console:

### Basic usage
```
version: 2.1

orbs:
  pod: xxkrashxx/pod@1.1.3<-- include this

jobs:
  basic-usage:
    steps:
      - checkout
      - pod/install <-- one liner command
      ...
```

### [Bundler](https://bundler.io) support!
We highly recommend using environment as a code approach.  
This will guarantee the same result on each computer.
```
version: 2.1

orbs:
  pod: xxkrashxx/pod@1.1.3

jobs:
  bundler-usage:
    steps:
      - checkout
      - pod/install:
          with-bundler: true
      ...
```

### Advanced
For advanced usage examples, please, check official [Orb page](https://circleci.com/developer/orbs/orb/pod/pod).

---

## Resources

[CircleCI Orb Registry Page](https://circleci.com/orbs/registry/orb/pod/pod) - The official registry page of this orb for all versions, executors, commands, and jobs described.

[CircleCI Orb Docs](https://circleci.com/docs/2.0/orb-intro/#section=configuration) - Docs for using, creating, and publishing CircleCI Orbs.

### How to Contribute

We welcome [issues](https://github.com/xxKRASHxx/circleci-pod-orb/issues) to and [pull requests](https://github.com/xxKRASHxx/circleci-pod-orb/pulls) against this repository!

### How to Publish An Update
1. Merge pull requests with desired changes to the main branch.
    - For the best experience, squash-and-merge and use [Conventional Commit Messages](https://conventionalcommits.org/).
2. Find the current version of the orb.
    - You can run `circleci orb info pod/pod | grep "Latest"` to see the current version.
3. Create a [new Release](https://github.com/xxKRASHxx/circleci-pod-orb/releases/new) on GitHub.
    - Click "Choose a tag" and _create_ a new [semantically versioned](http://semver.org/) tag. (ex: v1.0.0)
      - We will have an opportunity to change this before we publish if needed after the next step.
4.  Click _"+ Auto-generate release notes"_.
    - This will create a summary of all of the merged pull requests since the previous release.
    - If you have used _[Conventional Commit Messages](https://conventionalcommits.org/)_ it will be easy to determine what types of changes were made, allowing you to ensure the correct version tag is being published.
5. Now ensure the version tag selected is semantically accurate based on the changes included.
6. Click _"Publish Release"_.
    - This will push a new tag and trigger your publishing pipeline on CircleCI.
