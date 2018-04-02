//
//  ViewController.swift
//  NetworkDemo
//
//  Created by 江奔 on 2018/4/2.
//  Copyright © 2018年 yueyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        loadDataForCategory()
    }

    /// 分类获取
    fileprivate func loadDataForCategory() {
        
        let urlStr = "https://www.quanqiuwu.vip/getAppHomeList"
        NetworkRequest.sharedInstance.getRequest(urlString: urlStr, params: nil, success: { (response) in
            
            let code = response["code"] as! String
            if code == "0000" {
                let dataArr = response["data"] as! [Any]
                
                if let getCategorys = [DeviceCategory].deserialize(from: dataArr){
                    print(getCategorys.count)
                }
                //                if let getCategorys = [DeviceCategory].deserialize(from: dataArr){
                //                    self.categorys = getCategorys as! [DeviceCategory]
                //                    self.tableView.reloadData()
                //                    self.tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: false,scrollPosition: .top)
                //                    self.currentCategory = self.categorys[0]
                //
                //                    // 拿到第一个类别加载商品数据
                //                    self.collectionView.mj_header.beginRefreshing()
                //                }
            }else {
//                SVProgressHUD.doAnyRemind(withHUDMessage: response["message"] as! String, withDuration: 1.5)
            }
            
        }) { (error) in
//            SVProgressHUD.doAnythingFailed(withHUDMessage: error.localizedDescription, withDuration: 1.5)
        }
    }
    
    
}

