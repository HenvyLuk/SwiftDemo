//
//  ViewController.swift
//  SwiftDemo
//
//  Created by csh on 16/5/27.
//  Copyright © 2016年 csh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var delegate : testPro?
    
    
    @IBOutlet weak var myImage: UIImageView!
    
    var dynamicAni = UIDynamicAnimator()
    var dynamicAnimator: UIDynamicAnimator?
    var snap :UISnapBehavior?
    

    
 
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //test()
        //dynamics()
        //self.dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        //animations()
        self.delegate = testViewController()
        self.delegate?.testProAction()
      
        
    }
    
  
    @IBOutlet weak var testBtn: UIButton!
    
    func animations()  {
        UIView.animateWithDuration(0.25) {
            self.myImage.center = CGPointMake(400, 400)
        }
    }
    
    @IBAction func tapped(sender: AnyObject) {
        let tap = sender as! UITapGestureRecognizer
        let point = tap.locationInView(self.view)
        
        //self.dynamicAnimator?.removeBehavior(self.snap!)
        self.snap = UISnapBehavior(item: self.myImage,snapToPoint: point)
        self.dynamicAnimator?.addBehavior(self.snap!)
        
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
    
    deinit{
       print("ViewController-deinit")
    }
    
}

