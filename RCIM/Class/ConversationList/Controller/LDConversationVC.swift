//
//  LDConversationVC.swift
//  RCIM
//
//  Created by yh on 16/4/20.
//  Copyright © 2016年 ld. All rights reserved.
//

import UIKit

class LDConversationVC: RCConversationViewController {
    override func viewDidLoad() {
       super.viewDidLoad()
        baseSetting()
    }
    func baseSetting(){
        targetId =  "lingdasuper"
        title = "与女友聊天中"
        conversationType = .ConversationType_PRIVATE
        setMessageAvatarStyle(.USER_AVATAR_CYCLE)
    }
}
