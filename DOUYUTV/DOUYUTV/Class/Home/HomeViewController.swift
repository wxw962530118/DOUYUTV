//
//  HomeViewController.swift
//  DOUYUTV
//
//  Created by 王新伟 on 2017/4/15.
//  Copyright © 2017年 王新伟. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK: --- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置UI
        setUpUI()
    }
}

//MARK:设置UI界面
extension HomeViewController{
    fileprivate func setUpUI(){
      //1.不需要调整scrollView的内边距
      automaticallyAdjustsScrollViewInsets = false
      //2.设置导航栏相关
        setUpNavigationBar();
    }

}

extension HomeViewController{
   
    fileprivate func  setUpNavigationBar(){
       //1.设置左侧的Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName:"logo")
       //设置导航栏右侧的按钮
        let size =  CGSize(width: 40 , height: 40)        
        let historyItem = UIBarButtonItem(imageName:"image_my_history" ,heightImageName:"Image_my_history_click" , size:size)
        let searchItem = UIBarButtonItem(imageName:"btn_search" , heightImageName : "btn_search_clicked" ,size:size)
        let qrcodeItem = UIBarButtonItem(imageName:"Image_scan" , heightImageName:"Image_scan_click",size:size)
       navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
    }
}
