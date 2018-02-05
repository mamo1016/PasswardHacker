//
//  ViewController.swift
//  PaswardHacker
//
//  Created by 上田　護 on 2017/10/18.
//  Copyright © 2017年 上田　護. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var resaultLabel1: UILabel!
    @IBOutlet var resaultLabel2: UILabel!
    @IBOutlet var resaultLabel3: UILabel!
    @IBOutlet var resaultLabel4: UILabel!
    
    var password: Int = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func start() {

        var i = 0
        
        print("test")
        while i != (password + 1) {
            
            i += 1
            //解析中の数字を表示する
            countLabel.text = String(i)
            
            //処理を0.0005秒待機する
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.5))
            //passwardとiが一致したら...
            if password == i {
                var digits = [Int]()

                for _ in 0...3 {
                    digits.append(password % 10)    //j行目の数字
                    password = password / 10
                    print("answer is \(i)！")
                }
                
                resaultLabel1.text = String(digits[3])
                resaultLabel2.text = String(digits[2])
                resaultLabel3.text = String(digits[1])
                resaultLabel4.text = String(digits[0])
            }
        }
    }
    
    @IBAction func reset() {
        
        password = 1234
        
        countLabel.text = "press [Start] and initiate analysis"
        
        resaultLabel1.text = "0"
        resaultLabel2.text = "0"
        resaultLabel3.text = "0"
        resaultLabel4.text = "0"
        
    }


}

