//
//  DDView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class DDView: PersonalView {
    
    //MARK: Properties
    var topLabel = UILabel()
    var midLabel = UILabel()
    var bottomLabel = UILabel()
    var diImageView = UIImageView()
    let totalDiDisstance:CGFloat = screenHeight * 0.5
    
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
        topLabel.text = "dungeons & dragons is plagued by a false stigma"
        topLabel.textColor = UIColor.earlyDawn()
        topLabel.font = UIFont.graphikLight(15)
        topLabel.numberOfLines = 10
        topLabel.textAlignment = .Center
        topLabel.alpha = 0.0
        
        midLabel.text = "it’s not a bunch of dudes wearing leather jerkins and swinging swords"
        midLabel.textColor = UIColor.earlyDawn()
        midLabel.font = UIFont.graphikLight(15)
        midLabel.numberOfLines = 10
        midLabel.textAlignment = .Center
        midLabel.alpha = 0.0
        
        bottomLabel.text = "it’s a group of friends sitting around a table with food and jokes, creating a story together\n(the leather jerkin is optional)"
        bottomLabel.textColor = UIColor.earlyDawn()
        bottomLabel.font = UIFont.graphikLight(15)
        bottomLabel.numberOfLines = 10
        bottomLabel.textAlignment = .Center
        bottomLabel.alpha = 0.0
        
        diImageView.image = UIImage(named: "20Sided")
        diImageView.contentMode = .ScaleAspectFit
        
        addSubview(topLabel)
        addSubview(midLabel)
        addSubview(bottomLabel)
        addSubview(diImageView)
    }
    
    func applyConstraints(){
        topLabel.addConstraints(
            Constraint.bt.of(midLabel, offset: -35),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        midLabel.addConstraints(
            Constraint.tt.of(self, offset: 85),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        bottomLabel.addConstraints(
            Constraint.tb.of(midLabel, offset: 35),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        diImageView.addConstraints(
            Constraint.tt.of(self, offset: 75),
            Constraint.cxcx.of(self),
            Constraint.wh.of(250)
        )
    }
    
    override func animateWithPercent(percent: CGFloat){
        var realPercent = (percent - 0.375) * 4
        
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
            Constraint.tt.of(self, offset: 85),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        bottomLabel.addConstraints(
            Constraint.tb.of(midLabel, offset: 35 - (40 * realPercent)),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 150)
        )
        
        
        diImageView.addConstraints(
            Constraint.tt.of(self, offset: 75 + (totalDiDisstance * realPercent * 2)),
            Constraint.cxcx.of(self),
            Constraint.wh.of(250 - (100 * realPercent))
        )
        
        
        diImageView.transform = CGAffineTransformMakeRotation(CGFloat(M_PI * 2) * realPercent)
    }
}