//
//  ViewController.swift
//  SwiftDemo
//
//  Created by csh on 16/5/27.
//  Copyright © 2016年 csh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    
    var dynamicAni = UIDynamicAnimator()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        test()
        dynamics()
    }

    func dynamics() {
        dynamicAni = UIDynamicAnimator(referenceView: self.view)
        let gravity = UIGravityBehavior(items: [self.myImage])
        dynamicAni.addBehavior(gravity)
        
        let collsion = UICollisionBehavior(items: [self.myImage])
        collsion.translatesReferenceBoundsIntoBoundary = true
        dynamicAni.addBehavior(collsion)
        
    }
    
    
    func test() {
        let array = [2000,541,34,78,999]
        let newArray = array.sort()

        print(newArray)
        
       
    }
    
}

