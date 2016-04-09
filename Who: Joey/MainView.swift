//
//  ExampleView.swift
//  ConstraintExample
//
//  Created by Joey on 3/31/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

let screenSize: CGRect = UIScreen.mainScreen().bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height

import UIKit

class MainView: UIView {
    
    //MARK: Properties
    
    var mainScrollView = UIScrollView()
    var mainView = UIView()
    var xButton = UIButton()
    
    
    var tealView = UIView()
    var blueView = UIView()
    var purpleView = UIView()
    
    //teal
    var tealLabel = UILabel()
    
    //blue
    var blueLabel = UILabel()
    
    //purple
    var purpleLabel = UILabel()
    
    //MARK: Inits
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: View Configuration
    
    override func updateConstraints() {
        super.updateConstraints()
        configureSubviews()
        applyConstraints()
    }
    
    func configureSubviews(){
        mainScrollView.contentSize = CGSizeMake(screenWidth, screenHeight * 3)
        mainScrollView.pagingEnabled = true
        mainScrollView.showsHorizontalScrollIndicator = false
        mainScrollView.showsVerticalScrollIndicator = false
                
        xButton.setTitle("X", forState: .Normal)
        xButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        
        //Teal View
        tealView.backgroundColor = UIColor.clearColor()
        tealLabel.text = "Hey! I'm view #1"
        tealLabel.textColor = UIColor.whiteColor()
        tealLabel.textAlignment = .Center
        
        //Blue View
        blueView.backgroundColor = UIColor.clearColor()
        blueLabel.text = "And I'm #2"
        blueLabel.textColor = UIColor.whiteColor()
        blueLabel.textAlignment = .Center
        
        //Purple View
        purpleView.backgroundColor = UIColor.clearColor()
        purpleLabel.text = "But I'm #3"
        purpleLabel.textColor = UIColor.whiteColor()
        purpleLabel.textAlignment = .Center
        
        addSubview(mainScrollView)
        addSubview(xButton)
        
        mainScrollView.addSubview(mainView)
        mainView.addSubview(tealView)
        tealView.addSubview(tealLabel)
        
        mainView.addSubview(blueView)
        blueView.addSubview(blueLabel)
        
        mainView.addSubview(purpleView)
        purpleView.addSubview(purpleLabel)
    }
    
    func applyConstraints(){
        mainScrollView.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.cycy.of(self),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight)
        )
        
        xButton.addConstraints(
            Constraint.tt.of(self, offset: 15),
            Constraint.ll.of(self, offset: 15),
            Constraint.wh.of(30)
        )
        
        mainView.addConstraints(
            Constraint.tt.of(mainScrollView),
            Constraint.ll.of(mainScrollView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight * 3)
        )
        
        tealView.addConstraints(
            Constraint.tt.of(mainView),
            Constraint.ll.of((mainView)),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight)
        )
        
        tealLabel.addConstraints(
            Constraint.bb.of(tealView, offset: -55),
            Constraint.cxcx.of(tealView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(20)
        )
        
        blueView.addConstraints(
            Constraint.cxcx.of((mainView)),
            Constraint.tb.of(tealView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight)
        )
        
        blueLabel.addConstraints(
            Constraint.bb.of(blueView, offset: -55),
            Constraint.cxcx.of(blueView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(20)
        )
        
        purpleView.addConstraints(
            Constraint.cxcx.of((mainView)),
            Constraint.tb.of(blueView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight)
        )
        
        purpleLabel.addConstraints(
            Constraint.bb.of(purpleView, offset: -55),
            Constraint.cxcx.of(purpleView),
            Constraint.w.of(screenWidth),
            Constraint.h.of(20)
        )
    }

}