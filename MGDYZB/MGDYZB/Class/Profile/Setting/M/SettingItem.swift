//
//  SettingModel.swift
//  MGDYZB
//
//  Created by ming on 16/10/30.
//  Copyright © 2016年 ming. All rights reserved.
//

import UIKit

class SettingItem: NSObject {
    var title:String = ""
    var subTitle:String = ""
    var icon:String = ""
    
    // 保存每一行cell做的事情
    var operationBlock: ((indexPath: NSIndexPath) -> ())?
    
    init(title: String, subTitle: String = "", icon: String = "") {
        self.icon = icon
        self.title = title
        self.subTitle = subTitle
    }
    
    init(dict: [String : AnyObject]) {
        super.init()
        
        setValuesForKeysWithDictionary(dict)
    }
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String) { }
}
