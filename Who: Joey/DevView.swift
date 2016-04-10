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
        glassdoorLabel.text = "they have an app and I'm working on it this summer!"
        glassdoorLabel.textColor = UIColor.earlyDawn()
        glassdoorLabel.font = UIFont.graphikLight(14)
        glassdoorLabel.numberOfLines = 3
        glassdoorLabel.alpha = 0
        glassdoorLabel.textAlignment = .Center
        
        windoLabel.text = "you know the nightmare of coordinating with others' schedules? We’re fixing it."
        windoLabel.textColor = UIColor.earlyDawn()
        windoLabel.font = UIFont.graphikLight(14)
        windoLabel.numberOfLines = 2
        windoLabel.alpha = 0
        windoLabel.textAlignment = .Center
        
        rememberLabel.text = "ever heard of a journaling app?"
        rememberLabel.textColor = UIColor.earlyDawn()
        rememberLabel.font = UIFont.graphikLight(14)
        rememberLabel.numberOfLines = 2
        rememberLabel.alpha = 0
        rememberLabel.textAlignment = .Center
        
        flashyLabel.text = "1 + 1 = ?"
        flashyLabel.textColor = UIColor.earlyDawn()
        flashyLabel.font = UIFont.graphikLight(14)
        flashyLabel.numberOfLines = 2
        flashyLabel.alpha = 0
        flashyLabel.textAlignment = .Center
        
        glassdoorTitle.text = "Glassdoor"
        glassdoorTitle.textColor = UIColor.earlyDawn()
        glassdoorTitle.font = UIFont.graphikLight(16)
        glassdoorTitle.numberOfLines = 3
        glassdoorTitle.alpha = 0
        glassdoorTitle.textAlignment = .Center
        
        windoTitle.text = "Windo"
        windoTitle.textColor = UIColor.earlyDawn()
        windoTitle.font = UIFont.graphikLight(16)
        windoTitle.numberOfLines = 2
        windoTitle.alpha = 0
        windoTitle.textAlignment = .Center
        
        rememberTitle.text = "Remember"
        rememberTitle.textColor = UIColor.earlyDawn()
        rememberTitle.font = UIFont.graphikLight(16)
        rememberTitle.numberOfLines = 2
        rememberTitle.alpha = 0
        rememberTitle.textAlignment = .Center
        
        flashyTitle.text = "FlashyFlash"
        flashyTitle.textColor = UIColor.earlyDawn()
        flashyTitle.font = UIFont.graphikLight(16)
        flashyTitle.numberOfLines = 2
        flashyTitle.alpha = 0
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
        glassdoorLabel.addConstraints(
            Constraint.cycy.of(self, offset: -187.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        glassdoorTitle.addConstraints(
            Constraint.bt.of(glassdoorLabel, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        glassdoorIcon.addConstraints(
            Constraint.bt.of(glassdoorTitle, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        windoLabel.addConstraints(
            Constraint.cycy.of(self, offset: -42.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoTitle.addConstraints(
            Constraint.bt.of(windoLabel, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoIcon.addConstraints(
            Constraint.bt.of(windoTitle, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        rememberLabel.addConstraints(
            Constraint.cycy.of(self, offset: 42.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberTitle.addConstraints(
            Constraint.bt.of(rememberLabel, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberIcon.addConstraints(
            Constraint.bt.of(rememberTitle, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
        
        flashyLabel.addConstraints(
            Constraint.cycy.of(self, offset: 207.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyTitle.addConstraints(
            Constraint.bt.of(flashyLabel, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyIcon.addConstraints(
            Constraint.bt.of(flashyTitle, offset: -5),
            Constraint.cxcx.of(self),
            Constraint.wh.of(52)
        )
    }
    
    override func animateWithPercent(percent: CGFloat) {
        let realPercent = (percent - 0.875) * 8
                
        glassdoorLabel.alpha = realPercent * 2
        windoLabel.alpha = realPercent * 2
        rememberLabel.alpha = realPercent * 2
        flashyLabel.alpha = realPercent * 2
        
        glassdoorIcon.alpha = realPercent * 2
        windoIcon.alpha = realPercent * 2
        rememberIcon.alpha = realPercent * 2
        flashyIcon.alpha = realPercent * 2
        
        glassdoorTitle.alpha = realPercent * 2
        windoTitle.alpha = realPercent * 2
        rememberTitle.alpha = realPercent * 2
        flashyTitle.alpha = realPercent * 2
        
        glassdoorLabel.addConstraints(
            Constraint.cycy.of(self, offset: -187.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoLabel.addConstraints(
            Constraint.cycy.of(self, offset: -42.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberLabel.addConstraints(
            Constraint.cycy.of(self, offset: 82.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyLabel.addConstraints(
            Constraint.cycy.of(self, offset: 207.5),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth * 0.75)
        )
    }
}