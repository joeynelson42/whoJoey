//
//  FamilyView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class FamilyView: UIView {
    
    //MARK: Properties
    var familyLabel = UILabel()
    
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
        familyLabel.text = "people often say that\nstereotypes are wrong, but I’m from a Mormon\nfamily with 8 kids and\nso that’s a pretty\naccurate stereotype."
        familyLabel.textColor = UIColor.earlyDawn()
        familyLabel.font = UIFont.graphikLight(20)
        familyLabel.numberOfLines = 10
        familyLabel.textAlignment = .Center
        
        addSubview(familyLabel)
    }
    
    func applyConstraints(){
        familyLabel.addConstraints(
            Constraint.bb.of(self, offset: -10),
            Constraint.cxcx.of(self),
            Constraint.wh.of(200)
        )
    }
}