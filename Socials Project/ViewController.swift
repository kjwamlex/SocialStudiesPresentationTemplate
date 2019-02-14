//
//  ViewController.swift
//  Socials Project
//
//  Created by Joonwoo Kim on 2016. 6. 10..
//  Copyright © 2016년 Joonwoo Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lastAnimationView: UIView!
    
    @IBOutlet var secondanimationfirst: UIView!
    
    @IBOutlet var secondanimationsecond: UIView!
    
    @IBOutlet var firstanimation: UIView!
    
    @IBOutlet var videoendview: UIView!
    
    @IBOutlet var outputButton: UIButton!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var button10: UIButton!
    @IBOutlet var button11: UIButton!
    @IBOutlet var button12: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        self.lastAnimationView.transform = CGAffineTransformMakeScale(5, 5)
        
        self.secondanimationfirst.transform = CGAffineTransformMakeScale(5, 5)
        self.secondanimationsecond.transform = CGAffineTransformMakeScale(5, 5)
        
        self.firstanimation.transform = CGAffineTransformMakeScale(30, 30)
        self.firstanimation.alpha  = 0
        self.outputButton.transform = CGAffineTransformMakeScale(0.0000001, 0.0000001)
        self.outputButton.alpha = 0
        
        self.button1.layer.cornerRadius = 10
        self.button1.clipsToBounds = true
        self.button2.layer.cornerRadius = 10
        self.button2.clipsToBounds = true

        self.button3.layer.cornerRadius = 10
        self.button3.clipsToBounds = true

        self.button4.layer.cornerRadius = 10
        self.button4.clipsToBounds = true

        self.button5.layer.cornerRadius = 10
        self.button5.clipsToBounds = true

        self.button6.layer.cornerRadius = 10
        self.button6.clipsToBounds = true

        self.button7.layer.cornerRadius = 10
        self.button7.clipsToBounds = true

        self.button8.layer.cornerRadius = 10
        self.button8.clipsToBounds = true
        self.button9.layer.cornerRadius = 10
        self.button9.clipsToBounds = true
        self.button10.layer.cornerRadius = 10
        self.button10.clipsToBounds = true
        self.button11.layer.cornerRadius = 10
        self.button11.clipsToBounds = true
        self.button12.layer.cornerRadius = 10
        self.button12.clipsToBounds = true


    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.75, delay: 0.4, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.videoendview.transform = CGAffineTransformMakeScale(0.000000001, 0.000000001)
            self.firstanimation.alpha  = 1

            }, completion: nil)

        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.firstanimation.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)

        UIView.animateWithDuration(1, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.secondanimationfirst.transform = CGAffineTransformMakeScale(1, 1)
            self.secondanimationsecond.transform = CGAffineTransformMakeScale(1, 1)

            }, completion: nil)

        
        UIView.animateWithDuration(1, delay: 1.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.lastAnimationView.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
    }
    
    @IBAction func goback() {
        self.lastAnimationView.alpha = 1
        self.firstanimation.alpha = 1
        self.secondanimationsecond.alpha = 1
        self.secondanimationfirst.alpha = 1

        
        UIView.animateWithDuration(1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.firstanimation.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.secondanimationfirst.transform = CGAffineTransform(scaleX: 1, y: 1)
            self.secondanimationsecond.transform = CGAffineTransformMakeScale(1, 1)
            
            }, completion: nil)
        
        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.lastAnimationView.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(1, delay: 0.5, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
        self.outputButton.transform = CGAffineTransformMakeScale(0.000001, 0.000001)
            self.outputButton.alpha = 0
            }, completion: nil)
        
        

    }
    
    @IBAction func go() {
        
        
        UIView.animateWithDuration(0.5, animations: {
            
            self.lastAnimationView.alpha = 0
            self.firstanimation.alpha = 0
            self.secondanimationsecond.alpha = 0
            self.secondanimationfirst.alpha = 0

        })
 
        
        
        UIView.animateWithDuration(1.5, delay: 0.3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.firstanimation.transform = CGAffineTransformMakeScale(30, 30)
            
            }, completion: nil)
        
        UIView.animateWithDuration(1.5, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.secondanimationfirst.transform = CGAffineTransformMakeScale(5, 5)
            self.secondanimationsecond.transform = CGAffineTransformMakeScale(5, 5)

            
            
            }, completion: nil)
        
        
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.lastAnimationView.transform = CGAffineTransformMakeScale(5, 5)
 self.view.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)

        
        
        
        UIView.animateWithDuration(0.9, delay: 0.3,  usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseInOut, animations: {
            self.outputButton.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        
        UIView.animateWithDuration(1, animations: {
            self.outputButton.alpha = 1

        })
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

