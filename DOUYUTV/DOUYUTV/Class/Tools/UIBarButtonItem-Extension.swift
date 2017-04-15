//
//  UIBarButtonItem-Extension.swift
//  DOUYUTV
//
//  Created by 王新伟 on 2017/4/15.
//  Copyright © 2017年 王新伟. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    //遍历构造函数:1.convenience 开头 2. 在构造函数中必须明确调用一个设计的构造函数(self)
    convenience  init(imageName:String , heightImageName : String = "", size : CGSize = CGSize.zero) {
        //创建button
        let  button = UIButton()
        //设置高亮图片
        button.setImage(UIImage(named:imageName), for: UIControlState())

        if heightImageName != ""{
            button.setImage(UIImage(named:heightImageName), for: .highlighted)
        }
        
        //设置button尺寸
        if size == CGSize.zero {
            button.sizeToFit()
        }else{
            button.frame = CGRect(origin : CGPoint.zero , size:size)
        }
        self.init(customView : button)
    }
}
