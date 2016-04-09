//
//  SwedenView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class SwedenView: UIView {
    
    //MARK: Properties
    var swedenLabel = UILabel()
    
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
        swedenLabel.text = "You know Sweden? That country where everyone is good at everything and they’re also beautiful?\n\nThink of where your self-esteem would be after living with them for two years."
        
        swedenLabel.textColor = UIColor.earlyDawn()
        swedenLabel.font = UIFont.graphikLight(15)
        swedenLabel.numberOfLines = 10
        swedenLabel.textAlignment = .Center
        
        addSubview(swedenLabel)
    }
    
    func applyConstraints(){
        swedenLabel.addConstraints(
            Constraint.bb.of(self, offset: -40),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 75)
        )
    }
}