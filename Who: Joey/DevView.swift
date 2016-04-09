//
//  DevView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class DevView: UIView {
    
    //MARK: Properties
    var glassdoorLabel = UILabel()
    var windoLabel = UILabel()
    var rememberLabel = UILabel()
    var flashyLabel = UILabel()
    
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
        glassdoorLabel.text = "Glassdoor, that great, informative website, has an app and I worked on it!"
        glassdoorLabel.textColor = UIColor.earlyDawn()
        glassdoorLabel.font = UIFont.graphikLight(15)
        glassdoorLabel.numberOfLines = 3
        glassdoorLabel.textAlignment = .Center
        
        windoLabel.text = "Ever had to take advil after trying to\ncoordinate people’s schedules?"
        windoLabel.textColor = UIColor.earlyDawn()
        windoLabel.font = UIFont.graphikLight(15)
        windoLabel.numberOfLines = 2
        windoLabel.textAlignment = .Center
        
        rememberLabel.text = "Ever heard of a journaling app?"
        rememberLabel.textColor = UIColor.earlyDawn()
        rememberLabel.font = UIFont.graphikLight(15)
        rememberLabel.numberOfLines = 2
        rememberLabel.textAlignment = .Center
        
        flashyLabel.text = "1 + 1 = ?"
        flashyLabel.textColor = UIColor.earlyDawn()
        flashyLabel.font = UIFont.graphikLight(15)
        flashyLabel.numberOfLines = 2
        flashyLabel.textAlignment = .Center
        
        addSubview(glassdoorLabel)
        addSubview(windoLabel)
        addSubview(rememberLabel)
        addSubview(flashyLabel)
    }
    
    func applyConstraints(){
        glassdoorLabel.addConstraints(
            Constraint.tt.of(self, offset: 75),
            Constraint.cxcx.of(self, offset: 50),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        windoLabel.addConstraints(
            Constraint.tb.of(glassdoorLabel, offset: 75),
            Constraint.cxcx.of(self, offset: 50),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        rememberLabel.addConstraints(
            Constraint.tb.of(windoLabel, offset: 75),
            Constraint.cxcx.of(self, offset: 50),
            Constraint.w.of(screenWidth * 0.75)
        )
        
        flashyLabel.addConstraints(
            Constraint.tb.of(rememberLabel, offset: 75),
            Constraint.cxcx.of(self, offset: 50),
            Constraint.w.of(screenWidth * 0.75)
        )
    }
}