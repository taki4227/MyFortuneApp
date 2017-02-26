//
//  ViewController.swift
//  MyFortuneApp
//
//  Created by 滝本直樹 on 2017/02/26.
//  Copyright © 2017年 takimoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MyFortuneLabel: UILabel!
    
    @IBAction func getFortune(_ sender: Any) {
        
        let results = ["大吉", "吉", "中吉", "凶", "大凶"]
        
        // 0~9までの乱数を生成
        let randomNum = arc4random_uniform(UInt32(results.count))
        
        self.MyFortuneLabel.text = results[Int(randomNum)]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 枠線の設定
//        MyFortuneLabel.layer.borderColor = UIColor.orange.cgColor
//        MyFortuneLabel.layer.borderWidth = 5
        
        // 角丸の設定
        // 円にするには、Labelの高さの1/2にする
        MyFortuneLabel.layer.cornerRadius = MyFortuneLabel.bounds.width / 2
        // 角丸に合わせてマスクする
        MyFortuneLabel.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

