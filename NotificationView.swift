//
//  NotificationView.swift
//  Bolts
//
//  Created by Walinns Innovation on 23/07/18.
//

import Foundation
class NotificationView: UIView {
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "nib file name", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
}
