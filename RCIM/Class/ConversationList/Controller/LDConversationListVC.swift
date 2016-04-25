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
        registRCIM()
    }
    
    override func viewWillAppear(animated: Bool) {
        tabBarController?.tabBar.hidden = false
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        tabBarController?.tabBar.hidden = true
    }
    
    //MARK : - 点击cell 的事件
    override func onSelectedTableRow(conversationModelType: RCConversationModelType, conversationModel model: RCConversationModel!, atIndexPath indexPath: NSIndexPath!) {
        performSegueWithIdentifier("chatVC", sender: nil)
    }
    
    // MARK: - 注册融云，并初始化
    func registRCIM(){
        let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate
        appDelegate?.registerRCIM({ 
            self.setDisplayConversationTypes([
                RCConversationType.ConversationType_APPSERVICE.rawValue,
                RCConversationType.ConversationType_CHATROOM.rawValue,
                RCConversationType.ConversationType_GROUP.rawValue,
                RCConversationType.ConversationType_PRIVATE.rawValue,
                RCConversationType.ConversationType_SYSTEM.rawValue,
                RCConversationType.ConversationType_DISCUSSION.rawValue,
                RCConversationType.ConversationType_PUSHSERVICE.rawValue,
                RCConversationType.ConversationType_PUBLICSERVICE.rawValue
                ])
            self.refreshConversationTableViewIfNeeded()
        })
    }

}
