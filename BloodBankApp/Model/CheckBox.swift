//
//  CheckBox.swift
//  TableViewANdJsonParsing
//
//  Created by Mustafa Siddique on 2/1/20.
//  Copyright © 2020 Mustafa Siddique. All rights reserved.
//


/* This was created for button but not used in whole project*/

import UIKit

class CheckBox: UIButton {
    
    // images
    var checkedImage = UIImage(named: "HidePassword") as! UIImage
    var UncheckImage = UIImage(named: "SeePassword") as! UIImage
    
    // bool property
    var isChecked:Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, for: .normal)
            } else {
                self.setImage(UncheckImage, for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(buttonClicked), for: UIControl.Event.touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender:UIButton) {
        if (sender == self) {
            if isChecked == true {
                isChecked = false
            } else {
                isChecked = true
            }
        }
    }
}
