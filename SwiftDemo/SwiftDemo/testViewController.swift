//
//  testViewController.swift
//  SwiftDemo
//
//  Created by csh on 16/6/3.
//  Copyright © 2016年 csh. All rights reserved.
//
//boom shakalaka
import UIKit

class testViewController: UIViewController,testPro {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func testProAction(){
       print("testProAction")
    }
  
    deinit{
        print("testViewController-deinit")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
