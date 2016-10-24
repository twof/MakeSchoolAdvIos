# Followers - A Real-Life iOS Example

This project implements a common scenario that we often encounter in real life iOS development. We have a `UITableView` displaying a list of entities. In this case, the entities are of type `User`, with a `name` property and another property called `isFollowing` of type `Bool` to indicate whether the current user of the app is currently following this user. 

Every `UITableViewCell` has a button (of type `FollowButton`) that simultaneously indicates the `isFollowing` status (not following: ❌, following: ✅) and let's the user toggle the status by pressing it.

We now want to understand the **information flow** that needs to take place when the user of the app wants to follow/unfollow another user by tapping this button. 

Here are your challenges:

1. Update the `followState` of the `FollowButton` when it is pressed without changing the `isFollowing` property of a `User` object. Is this the right approach to implement the above mentioned requirement? Why or why not?
2. Implement the functionality using _Delegates_, _Closures_ and `NSNotificationCenter`. You can keep the code for all three approaches in the project.