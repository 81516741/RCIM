//
//  LDConversationListVC.swift
//  RCIM
//
//  Created by ld on 16/4/24.
//  Copyright © 2016年 ld. All rights reserved.
//

import UIKit

class LDConversationListVC: RCConversationListViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        tabBarController?.tabBar.hidden = false
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tabBarController?.tabBar.hidden = true
    }
 

}
