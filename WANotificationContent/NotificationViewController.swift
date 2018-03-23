//
//  NotificationViewController.swift
//  WANotificationContent
//
//  Created by Walinns Innovation on 23/03/18.
//  Copyright © 2018 Walinns Innovation. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

 
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    @available(iOSApplicationExtension 10.0, *)
    func didReceive(_ notification: UNNotification) {
        // self.label?.text = notification.request.content.body
        
        let content = notification.request.content
        
        if let urlImageString = content.userInfo["image"] as? String {
            if let url = URL(string: urlImageString) {
                URLSession.downloadImage(atURL: url) { [weak self] (data, error) in
                    if let _ = error {
                        return
                    }
                    guard let data = data else {
                        return
                    }
                    DispatchQueue.main.async {
                        self?.image.image = UIImage(data: data)
                    }
                }
            }
        }
    }

}
