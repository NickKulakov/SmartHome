//
//  LoginButton.swift
//  SmartHome
//
//  Created by Peter on 12/7/17.
//  Copyright © 2017 Nick. All rights reserved.
//

import UIKit

class LoginButton: UIButton {
    let logWithEmail = "Login with e-mail"
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setTitle(logWithEmail, for: .normal)
        self.backgroundColor = UIColor.blue
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
