//
//  DDView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class DDView: UIView {
    
    //MARK: Properties
    var ddLabel = UILabel()
    
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
        ddLabel.text = "dungeons & dragons is plagued by a stigma\n\nit’s not a bunch of dudes wearing leather jerkins and swinging swords\n\nit’s a group of friends sitting around a table with food and jokes creating a story together."
        ddLabel.textColor = UIColor.earlyDawn()
        ddLabel.font = UIFont.graphikLight(15)
        ddLabel.numberOfLines = 10
        ddLabel.textAlignment = .Center
        
        addSubview(ddLabel)
    }
    
    func applyConstraints(){
        ddLabel.addConstraints(
            Constraint.tt.of(self, offset: 75),
            Constraint.cxcx.of(self),
            Constraint.w.of(screenWidth - 75)
        )
    }
}