//
//  FollowButton.swift
//  Follower-demo
//
//  Created by Nikolas Burk on 15/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FollowButton: UIButton {

    
    override init(frame: CGRect) {
        followState = .isNotFollowing
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        followState = .isNotFollowing
        super.init(coder: aDecoder)
    }
    
    enum FollowState {
        case isFollowing
        case isNotFollowing
    }
    
    var followState: FollowState {
        didSet {
            switch followState {
            case .isFollowing:
                setTitle("✅", for: .normal)
            case .isNotFollowing:
                setTitle("❌", for: .normal)
            }
        }
    }
    
    func toggleFollow() {
        if followState == .isFollowing {
            followState = .isNotFollowing
            
        }else{
            followState = .isFollowing
        }
    }
}
