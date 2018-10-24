//
//  DWZTableRootViewController.swift
//  leetCode
//
//  Created by 段文拯 on 2018/10/24.
//  Copyright © 2018年 段文拯. All rights reserved.
//

import UIKit

private let identifier = "cell"

class DWZTableRootViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: self.view.bounds)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
}

// MARK: - UI
extension DWZTableRootViewController {
    fileprivate func setUpUI() {
        setUpTableView()
    }
    
    fileprivate func setUpTableView() {
        tableView.frame = CGRect.zero
        view.addSubview(tableView)
    }
}


// MARK: - UITableViewDataSource
extension DWZTableRootViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell.init()
    }
}


// MARK: - UITableViewDelegate
extension DWZTableRootViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
