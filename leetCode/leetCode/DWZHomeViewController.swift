//
//  DWZHomeViewController.swift
//  leetCode
//
//  Created by 段文拯 on 2018/10/24.
//  Copyright © 2018年 段文拯. All rights reserved.
//

import UIKit

// 宏的使用
//

//public kScreenWidth = UIScreen.main.bounds.size.width

// 首页：有列表（易、中、难），容易【70，239】
// 分类页：问题列表，显示是否解决问题，（绿色，解决）（黄色，尝试未解决）（红色，解决不了）每个问题从开始尝试开始计时，如果三天未解决自动移到红色
// 结果页：beats页面截图

// 可以另外的tab （）

class DWZHomeViewController: DWZTableRootViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Problems"
        tableView.frame = CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: 300)
        tableView.backgroundColor = UIColor.cyan
        
        let array = [["icon":"123","name":"easy","totalCount":"100"],
                     ["icon":"123","name":"middle","totalCount":"10"],
                     ["icon":"123","name":"hard","totalCount":"10"]]
        var modelArray = [DWZHomeModel]()
        for dic in array {
            let model:DWZHomeModel = DWZHomeModel(dict: dic)
            modelArray.append(model)
        }
        
    }
}

extension DWZHomeViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
}
