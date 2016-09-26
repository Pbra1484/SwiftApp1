//
//  ViewController.swift
//  SwiftApp1
//
//  Created by Brashear, Patrick on 9/26/16.
//  Copyright © 2016 Brashear, Patrick. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var lable1: UILabel!
    
    @IBOutlet weak var slideing: UISlider!
    
    @IBOutlet weak var buttonThing: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonThingClick(sender: UIButton)
    {
        lable1.text = "You clicked the BUTTON!"
        lable1.textColor = makeRandomColor()
        
    }

    @IBAction func slideingSlides(sender: UISlider)
    {
        
    }
    private func makeRandomColor() -> UIColor
    {
        let randomColor : UIColor
        
        //swifts color are persets
        
        let redColor :CGFloat = CGFloat(drand48())
        let greenColor :CGFloat = CGFloat(Double(arc4random_uniform(256))/(255.00))
        let blueColor :CGFloat = CGFloat(drand48())
        let alphaChannel :CGFloat = 1.0
        
        randomColor = UIColor(red: redColor, gree: greenColor, blue: blueColor, alpha: alphaChannel)
        
        return randomColor
    }
}

