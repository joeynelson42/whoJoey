//
//  CollectionViewController.swift
//  CircularCollectionView
//
//  Created by Rounak Jain on 10/05/15.
//  Copyright (c) 2015 Rounak Jain. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
  
    //Properties
    var colors = [UIColor]()
    
    var red = CGFloat()
    var blue = CGFloat()
    var green = CGFloat()
    
    var personalViews = [NameView(), FamilyView(), DDView(), SwedenView(), DevView()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        collectionView?.registerClass(CircularCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView?.showsVerticalScrollIndicator = false
        collectionView?.showsHorizontalScrollIndicator = false
        
        colors = [UIColor.earlyDawn(), UIColor.myPink(), UIColor.mauveTaupe(), UIColor.palatinatePurple(), UIColor.clairvoyant()]
        
        collectionView?.backgroundColor = colors[0]
    }
}

extension CollectionViewController {
  
    // MARK: UICollectionViewDataSource
  
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CircularCollectionViewCell
    
         cell.viewContainer = personalViews[indexPath.row]
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

    }
  
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        
        let percent = scrollView.contentOffset.x/(screenWidth * 4)
        
        if percent <= 0.1 || percent >= 1.0 {
            return
        }
        
        var rgb: (red: CGFloat, green: CGFloat, blue: CGFloat)!
        
        if percent <= 0.3 {
            let tempPercent = (percent - 0.1) * 5
            rgb = transitionColorToColor(colors[0], toColor: colors[1], percent: tempPercent)
        }
        else if percent <= 0.5 {
            let tempPercent = (percent - 0.3) * 5
            rgb = transitionColorToColor(colors[1], toColor: colors[2], percent: tempPercent)
        }
        else if percent <= 0.7 {
            let tempPercent = (percent - 0.5) * 5
            rgb = transitionColorToColor(colors[2], toColor: colors[3], percent: tempPercent)
        }
        else if percent <= 0.9 {
            let tempPercent = (percent - 0.7) * 5
            rgb = transitionColorToColor(colors[3], toColor: colors[4], percent: tempPercent)
        }

        guard let _ = rgb else { return }
        
        red = rgb.red
        green = rgb.green
        blue = rgb.blue
        
//        print("x: \(scrollView.contentOffset.x) percent: \(percent)")
        
        let background = UIColor(red:red/256, green:green/256, blue:blue/256, alpha: 1.0)
        collectionView?.backgroundColor = background
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
