//
//  mainViewController.swift
//  Who: Joey
//
//  Created by Joey on 4/6/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK: Properties
    
    var mainView = MainView()
    var colors = [UIColor]()
    
    var red = CGFloat()
    var blue = CGFloat()
    var green = CGFloat()
    
    //MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        view = mainView
        mainView.mainScrollView.delegate = self
        addTargets()
        
       // colors = [UIColor.darkTeal(), UIColor.darkBlue(), UIColor.darkPurple()]
        mainView.mainView.backgroundColor = colors[0]
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func addTargets(){
        mainView.xButton.addTarget(self, action: #selector(MainViewController.dismissTutorial), forControlEvents: .TouchUpInside)
    }
    
    func dismissTutorial(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
        if scrollView.contentOffset.y < 0 || scrollView.contentOffset.y > (screenHeight * 2) {
            return
        }
        
        let percent = scrollView.contentOffset.y/(screenHeight * 2)
        
        if percent <= 0.5 {
            let tempPercent = percent * 2
            let rgb = transitionColorToColor(colors[0], toColor: colors[1], percent: tempPercent)
            
            red = rgb.red
            green = rgb.green
            blue = rgb.blue
        }
        else {
            let tempPercent = (percent - 0.5) * 2
            let rgb = transitionColorToColor(colors[1], toColor: colors[2], percent: tempPercent)
            
            red = rgb.red
            green = rgb.green
            blue = rgb.blue
        }
        
        let background = UIColor(red:red/256, green:green/256, blue:blue/256, alpha: 1.0)
        mainView.mainView.backgroundColor = background
    }
    
    func transitionColorToColor(fromColor: UIColor, toColor: UIColor, percent: CGFloat) -> (red: CGFloat, green: CGFloat, blue: CGFloat){
        let fromRGB = fromColor.rgb()!
        let toRGB = toColor.rgb()!
        
        red = fromRGB.red + (percent * (toRGB.red - fromRGB.red))
        green = fromRGB.green + (percent * (toRGB.green - fromRGB.green))
        blue = fromRGB.blue + (percent * (toRGB.blue - fromRGB.blue))
        
        return (red: red, green: green, blue: blue)
    }

}