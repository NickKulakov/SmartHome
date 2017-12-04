//
//  LoginCell.swift
//  ViewCollection
//
//  Created by Peter on 12/4/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit
import SnapKit

class LoginCell : UICollectionViewCell {
    
    static let reuseidentifire = "LoginCell"
    //create variables with property
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //code for initialise cell
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
