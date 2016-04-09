//
//  NameView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class NameView: UIView {
    
    //MARK: Properties
    
    var expandedWidth = 120
    var baseJoeyWidth = 50
    var baseEdmondWith = 100
    var baseNelsonWidth = 70
    
    // joey
    var joeyStackView = UIStackView()
    var j_j = NameCharacterView(char: "j")
    var o_j = NameCharacterView(char: "o")
    var e_j = NameCharacterView(char: "e")
    var y_j = NameCharacterView(char: "y")
    
    //edmond
    var edmondStackView = UIStackView()
    var e_e = NameCharacterView(char: "e")
    var d_e = NameCharacterView(char: "d")
    var m_e = NameCharacterView(char: "m")
    var o_e = NameCharacterView(char: "o")
    var n_e = NameCharacterView(char: "n")
    var d_e2 = NameCharacterView(char: "d")
    
    //nelson
    var nelsonStackView = UIStackView()
    var n_n = NameCharacterView(char: "n")
    var e_n = NameCharacterView(char: "e")
    var l_n = NameCharacterView(char: "l")
    var s_n = NameCharacterView(char: "s")
    var o_n = NameCharacterView(char: "o")
    var n_n2 = NameCharacterView(char: "n")
    
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
        joeyStackView = UIStackView(arrangedSubviews: [j_j, o_j, e_j, y_j])
        joeyStackView.axis = .Horizontal
        joeyStackView.distribution = .EqualSpacing
        
        edmondStackView = UIStackView(arrangedSubviews: [e_e, d_e, m_e, o_e, n_e, d_e2])
        edmondStackView.axis = .Horizontal
        edmondStackView.distribution = .EqualSpacing
        
        nelsonStackView = UIStackView(arrangedSubviews: [n_n, e_n, l_n, s_n, o_n, n_n2])
        nelsonStackView.axis = .Horizontal
        nelsonStackView.distribution = .EqualSpacing
        
        addSubviews(joeyStackView, edmondStackView, nelsonStackView)
    }
    
    func applyConstraints(){
        let joeyHeight:CGFloat = -50
        
        // joey
        joeyStackView.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.cycy.of(self, offset: joeyHeight),
            Constraint.w.of(120),
            Constraint.h.of(20)
        )
        
        edmondStackView.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.tb.of(joeyStackView, offset: 6),
            Constraint.w.of(120),
            Constraint.h.of(20)
        )
        
        nelsonStackView.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.tb.of(edmondStackView, offset: 6),
            Constraint.w.of(120),
            Constraint.h.of(20)
        )
    }
}


class NameCharacterView: UILabel {
    
    //MARK: Properties
    var character = UILabel()
    
    //MARK: Inits
    convenience init(char: String) {
        self.init(frame: CGRectZero)
        character.text = char
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
        character.font = UIFont.graphikRegular(18)
        character.textColor = UIColor.clairvoyant()
        
        addSubview(character)
    }
    
    func applyConstraints(){
        character.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.cycy.of(self)
        )
    }
}
