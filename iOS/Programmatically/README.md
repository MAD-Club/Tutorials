#  Programmatic Example
iOS Development programmatically using Swift and CocoaPods.

## Why?

Storyboards pose a main problem in the real world when working in a team. Storyboards, for some odd-reason, likes to auto-generate their xml files everytime it's being opened/edited. That means when both parties are using Storyboards, you are almost always guaranteed to have a merge conflict in git.

Another disadvantage too, is when resolving the git merge conflicts, the XML files are nearly unreadable and are not meant to be human-readable. This makes Storyboards difficult to deal with in the real world.

This is okay though, as doing everything programmatically actually gives you the freedom to do more things then you want. If you've done any JavaFX/Swing frameworks, then this will feel oddly similar and satisifying.

To begin, you can look in the `examples` folder. If not, I have provided a gist located [here](https://gist.github.com/j-nguyen/11151f7c952b71ab1a3cd2b07728c4c5).

## Example Project

### Requirements

To run the project you will need:

- RVM (Ruby Version Manager,)
- Ruby 2.3.0
- CocoaPods

More on CocoaPods: [Here](https://guides.cocoapods.org/)

### Installation

Type in this, after you've installed the requirements

```
bundle exec pod install
```

This installs the `pods` or libraries in the `Podfile`. We only have SnapKit to demonstrate its use for constraints. Once this is done, you must open the `.xcworkspace` file, and not the `.xcodeproj` file, otherwise you won't have the pods you've installed.

So, what I like to do is this:

```
open RxExample.xcworkspace/
```

To ensure I'm opening the right project.

