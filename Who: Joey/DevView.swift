//
//  DevView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class DevView: PersonalView {
    
    //MARK: Properties
    var glassdoorLabel = UILabel()
    var windoLabel = UILabel()
    var rememberLabel = UILabel()
    var flashyLabel = UILabel()
    
    var glassdoorTitle = UILabel()
    var windoTitle = UILabel()
    var rememberTitle = UILabel()
    var flashyTitle = UILabel()
    
    var glassdoorIcon = UIImageView()
    var windoIcon = UIImageView()
    var rememberIcon = UIImageView()
    var flashyIcon = UIImageView()
    
    var offCenterX:CGFloat = 0
    
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
        alpha = 0.0
        
        glassdoorLabel.text = "they have an app and I'm working on it this summer!"
        glassdoorLabel.textColor = UIColor.earlyDawn()
        glassdoorLabel.font = UIFont.graphikLight(14)
        glassdoorLabel.numberOfLines = 3
        glassdoorLabel.textAlignment = .Center
        
        windoLabel.text = "coordinating the chaos of everyones' crazy schedules"
        windoLabel.textColor = UIColor.earlyDawn()
        windoLabel.font = UIFont.graphikLight(14)
        windoLabel.numberOfLines = 2
        windoLabel.textAlignment = .Center
        
        rememberLabel.text = "ever heard of a journaling app?"
        rememberLabel.textColor = UIColor.earlyDawn()
        rememberLabel.font = UIFont.graphikLight(14)
        rememberLabel.numberOfLines = 2
        rememberLabel.textAlignment = .Center
        
        flashyLabel.text = "1 + 1 = ?"
        flashyLabel.textColor = UIColor.earlyDawn()
        flashyLabel.font = UIFont.graphikLight(14)
        flashyLabel.numberOfLines = 2
        flashyLabel.textAlignment = .Center
        
        glassdoorTitle.text = "Glassdoor"
        glassdoorTitle.textColor = UIColor.earlyDawn()
        glassdoorTitle.font = UIFont.graphikLight(16)
        glassdoorTitle.numberOfLines = 3
        glassdoorTitle.textAlignment = .Center
        
        windoTitle.text = "Windo"
        windoTitle.textColor = UIColor.earlyDawn()
        windoTitle.font = UIFont.graphikLight(16)
        windoTitle.numberOfLines = 2
        windoTitle.textAlignment = .Center
        
        rememberTitle.text = "Remember"
        rememberTitle.textColor = UIColor.earlyDawn()
        rememberTitle.font = UIFont.graphikLight(16)
        rememberTitle.numberOfLines = 2
        rememberTitle.textAlignment = .Center
        
        flashyTitle.text = "FlashyFlash"
        flashyTitle.textColor = UIColor.earlyDawn()
        flashyTitle.font = UIFont.graphikLight(16)
        flashyTitle.numberOfLines = 2
        flashyTitle.textAlignment = .Center
        
        glassdoorIcon.image = UIImage(named: "glassdoorIcon")
        glassdoorIcon.contentMode = .ScaleAspectFit
        
        windoIcon.image = UIImage(named: "Windo Icon")
        windoIcon.contentMode = .ScaleAspectFit
        
        rememberIcon.image = UIImage(named: "RememberIcon")
        rememberIcon.contentMode = .ScaleAspectFit
        
        flashyIcon.image = UIImage(named: "FlashyIcon")
        flashyIcon.contentMode = .ScaleAspectFit
        
        addSubview(glassdoorLabel)
        addSubview(windoLabel)
        addSubview(rememberLabel)
        addSubview(flashyLabel)
        
        addSubviews(glassdoorIcon, windoIcon, rememberIcon, flashyIcon)
        addSubviews(glassdoorTitle, windoTitle, rememberTitle, flashyTitle)
    }
    
    func applyConstraints(){
        glassdoorIcon.addConstraints(
            Constraint.tt.of(self, offset: 75),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        glassdoorLabel.addConstraints(
            Constraint.bb.of(glassdoorIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        glassdoorTitle.addConstraints(
            Constraint.bb.of(glassdoorIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoIcon.addConstraints(
            Constraint.tb.of(glassdoorIcon, offset: 75 ),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        windoLabel.addConstraints(
            Constraint.bb.of(windoIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoTitle.addConstraints(
            Constraint.bb.of(windoIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberIcon.addConstraints(
            Constraint.tb.of(windoIcon, offset: 75),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        rememberLabel.addConstraints(
            Constraint.bb.of(rememberIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberTitle.addConstraints(
            Constraint.bb.of(rememberIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyIcon.addConstraints(
            Constraint.tb.of(rememberIcon, offset: 75),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyTitle.addConstraints(
            Constraint.bb.of(flashyIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyLabel.addConstraints(
            Constraint.bb.of(flashyIcon, offset: 0),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
    }
    
    override func animateWithPercent(percent: CGFloat) {
        let realPercent = (percent - 0.875) * 8
        
        let alphaVariable:CGFloat = 2 * realPercent
        
        alpha = realPercent * alphaVariable
        
        
        glassdoorTitle.addConstraints(
            Constraint.bb.of(glassdoorIcon, offset: 20 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        glassdoorLabel.addConstraints(
            Constraint.bb.of(glassdoorIcon, offset: 49 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoTitle.addConstraints(
            Constraint.bb.of(windoIcon, offset: 20 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoLabel.addConstraints(
            Constraint.bb.of(windoIcon, offset: 49 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberTitle.addConstraints(
            Constraint.bb.of(rememberIcon, offset: 20 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberLabel.addConstraints(
            Constraint.bb.of(rememberIcon, offset: 37 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyTitle.addConstraints(
            Constraint.bb.of(flashyIcon, offset: 20 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyLabel.addConstraints(
            Constraint.bb.of(flashyIcon, offset: 37 * realPercent),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
    }
}