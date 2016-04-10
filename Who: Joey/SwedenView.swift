//
//  SwedenView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class SwedenView: PersonalView {
    
    //MARK: Properties
    var topLabel = UILabel()
    var midLabel = UILabel()
    var bottomLabel = UILabel()
    let flagDistance:CGFloat = 50
    
    var flagContainer = UIView()
    var trFlag = UIView()
    var tlFlag = UIView()
    var brFlag = UIView()
    var blFlag = UIView()
    
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
        topLabel.text = "you know Sweden?"
        
        topLabel.textColor = UIColor.earlyDawn()
        topLabel.font = UIFont.graphikLight(15)
        topLabel.numberOfLines = 10
        topLabel.textAlignment = .Center
        topLabel.alpha = 0.0
        
        midLabel.text = "that country where everyone is good at everything and they’re also beautiful?"
        
        midLabel.textColor = UIColor.earlyDawn()
        midLabel.font = UIFont.graphikLight(15)
        midLabel.numberOfLines = 10
        midLabel.textAlignment = .Center
        midLabel.alpha = 0.0
        
        bottomLabel.text = "think of where your self-esteem would be after living with them for two years"
        
        bottomLabel.textColor = UIColor.earlyDawn()
        bottomLabel.font = UIFont.graphikLight(15)
        bottomLabel.numberOfLines = 10
        bottomLabel.textAlignment = .Center
        bottomLabel.alpha = 0.0
        
        trFlag.backgroundColor = UIColor.earlyDawn()
        tlFlag.backgroundColor = UIColor.earlyDawn()
        brFlag.backgroundColor = UIColor.earlyDawn()
        blFlag.backgroundColor = UIColor.earlyDawn()
 
        addSubviews(topLabel, midLabel, bottomLabel)
        addSubview(flagContainer)
        addSubviews(trFlag, tlFlag, brFlag, blFlag)
    }
    
    func applyConstraints(){
        topLabel.addConstraints(
            Constraint.bt.of(midLabel, offset: -35),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        midLabel.addConstraints(
            Constraint.bb.of(self, offset: -85),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        bottomLabel.addConstraints(
            Constraint.tb.of(midLabel, offset: 35),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        flagContainer.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.tt.of(self, offset: 75),
            Constraint.w.of(195),
            Constraint.h.of(118)
        )
        
        trFlag.addConstraints(
            Constraint.rr.of(flagContainer, offset: flagDistance),
            Constraint.tt.of(flagContainer, offset: -flagDistance),
            Constraint.w.of(109.5),
            Constraint.h.of(46.5)
        )
        
        tlFlag.addConstraints(
            Constraint.ll.of(flagContainer, offset: -flagDistance),
            Constraint.tt.of(flagContainer, offset: -flagDistance),
            Constraint.w.of(60),
            Constraint.h.of(46.5)
        )
        
        brFlag.addConstraints(
            Constraint.rr.of(flagContainer, offset: flagDistance),
            Constraint.bb.of(flagContainer, offset: flagDistance),
            Constraint.w.of(109.5),
            Constraint.h.of(46.5)
        )
        
        blFlag.addConstraints(
            Constraint.ll.of(flagContainer, offset: -flagDistance),
            Constraint.bb.of(flagContainer, offset: flagDistance),
            Constraint.w.of(60),
            Constraint.h.of(46.5)
        )
        
    }
    
    override func animateWithPercent(percent: CGFloat) {
        var realPercent = (percent - 0.625) * 4
        
        if realPercent >= 0.5 {
            realPercent = 1.0 - realPercent
        }
        topLabel.alpha = realPercent * 2
        midLabel.alpha = realPercent * 2
        bottomLabel.alpha = realPercent * 2
        
        topLabel.addConstraints(
            Constraint.bt.of(midLabel, offset: -35 + (40 * realPercent)),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        midLabel.addConstraints(
            Constraint.bb.of(self, offset: -85),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        bottomLabel.addConstraints(
            Constraint.tb.of(midLabel, offset: 35 - (40 * realPercent)),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        let flagPercent = 1 - (realPercent * 2)
        
        trFlag.addConstraints(
            Constraint.rr.of(flagContainer, offset: flagDistance * flagPercent),
            Constraint.tt.of(flagContainer, offset: -flagDistance * flagPercent),
            Constraint.w.of(109.5),
            Constraint.h.of(46.5)
        )
        
        tlFlag.addConstraints(
            Constraint.ll.of(flagContainer, offset: -flagDistance * flagPercent),
            Constraint.tt.of(flagContainer, offset: -flagDistance * flagPercent),
            Constraint.w.of(60),
            Constraint.h.of(46.5)
        )
        
        brFlag.addConstraints(
            Constraint.rr.of(flagContainer, offset: flagDistance * flagPercent),
            Constraint.bb.of(flagContainer, offset: flagDistance * flagPercent),
            Constraint.w.of(109.5),
            Constraint.h.of(46.5)
        )
        
        blFlag.addConstraints(
            Constraint.ll.of(flagContainer, offset: -flagDistance * flagPercent),
            Constraint.bb.of(flagContainer, offset: flagDistance * flagPercent),
            Constraint.w.of(60),
            Constraint.h.of(46.5)
        )
    }
}