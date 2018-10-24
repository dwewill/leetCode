//
//  DWZHomeModel.swift
//  leetCode
//
//  Created by 段文拯 on 2018/10/24.
//  Copyright © 2018年 段文拯. All rights reserved.
//

import UIKit

class DWZHomeModel: NSObject {
    /// 图标
    var icon: String?
    
    /// 分类名字
    var name: String?
    
    /// 数量
    var totalCount: String?
    
    /// 类的描述信息
    /// 创建model时,都要求实现该属性
    override var description: String {
        return dictionaryWithValues(forKeys: ["icon", "name", "totalCount"]).description
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}
