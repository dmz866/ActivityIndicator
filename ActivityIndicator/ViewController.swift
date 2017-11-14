//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by David Murillo on 10/12/17.
//  Copyright © 2017 David Murillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    var time = 0
    var timer = NSTimer()
    
    @IBAction func startActivityIndicator(sender: UIButton)
    {
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    func action()
    {
        time+=1
        if(time > 5)
        {
            timer.invalidate()
            activityIndicator.stopAnimating()
            UIApplication.sharedApplication().endIgnoringInteractionEvents()
        }
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

