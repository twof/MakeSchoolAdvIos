//
//  FollowerCell.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FollowerCell: UITableViewCell{
    
    let isFollowingString = "You are following this user"
    let isNotFollowingString = "You are not following this user"
    
    var index: Int!{
        didSet{
            notificationName = NSNotification.Name(rawValue: String(index))
        }
    }
    
    var notificationName: NSNotification.Name! = nil
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var followInfoLabel: UILabel!
    @IBOutlet weak var followButton: FollowButton!
    
    
    var user: User! {
        didSet {
            setUIForCurrentFollowingState()
        }
    }
    
    @IBAction func followButtonPressed(_ sender: AnyObject) {
        let payload = ["atCell": index]
        NotificationCenter.default.post(name: notificationName, object: self, userInfo: payload)
    }
    
    func setUIForCurrentFollowingState() {
        nameLabel.text = user.name
        followInfoLabel.text = user.isFollowing ? isFollowingString : isNotFollowingString
        followButton.followState = user.isFollowing ? .isFollowing : .isNotFollowing
    }
    
    func toggleFollowString() {
        if followInfoLabel.text == isFollowingString{
           followInfoLabel.text = isNotFollowingString
        }else{
            followInfoLabel.text = isFollowingString
        }
    }
}



