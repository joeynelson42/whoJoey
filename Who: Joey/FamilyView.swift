//
//  FamilyView.swift
//  Who: Joey
//
//  Created by Joey on 4/9/16.
//  Copyright © 2016 NelsonJE. All rights reserved.
//

import UIKit

class FamilyView: PersonalView {
    
    //MARK: Properties
    var topLabel = UILabel()
    var midLabel = UILabel()
    var bottomLabel = UILabel()
    
    //family
    var parentHeight:CGFloat = 80
    var siblingHeight:CGFloat = 110
    var syskonBarnHeight:CGFloat = 140
    
    var dad = FamilyTreeCircle()
    var mom = FamilyTreeCircle()
    
    // dave
    var dave = FamilyTreeCircle()
    var andrea = FamilyTreeCircle()
    var emma = FamilyTreeCircle()
    var kate = FamilyTreeCircle()
    var noah = FamilyTreeCircle()
    
    // maika
    var maika = FamilyTreeCircle()
    var kent = FamilyTreeCircle()
    var claire = FamilyTreeCircle()
    var ashley = FamilyTreeCircle()
    
    // tommy
    var tommy = FamilyTreeCircle()
    var maggie = FamilyTreeCircle()
    var jake = FamilyTreeCircle()
    var hannah = FamilyTreeCircle()
    
    // stephen
    var stephen = FamilyTreeCircle()
    var megan = FamilyTreeCircle()
    var naomi = FamilyTreeCircle()
    
    // jessie
    var jessie = FamilyTreeCircle()
    var kevin = FamilyTreeCircle()
    var kiki = FamilyTreeCircle()
    
    var joey = FamilyTreeCircle()
    var sammy = FamilyTreeCircle()
    var sarah = FamilyTreeCircle()
    
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
        
        topLabel.text = "people often say that stereotypes are wrong"
        topLabel.textColor = UIColor.earlyDawn()
        topLabel.font = UIFont.graphikLight(15)
        topLabel.numberOfLines = 10
        topLabel.textAlignment = .Center
        
        midLabel.text = "but I’m from a Mormon family with 8 kids"
        midLabel.textColor = UIColor.earlyDawn()
        midLabel.font = UIFont.graphikLight(15)
        midLabel.numberOfLines = 10
        midLabel.textAlignment = .Center
        
        bottomLabel.text = "so that’s a pretty accurate stereotype"
        bottomLabel.textColor = UIColor.earlyDawn()
        bottomLabel.font = UIFont.graphikLight(15)
        bottomLabel.numberOfLines = 10
        bottomLabel.textAlignment = .Center
        
        joey.backgroundColor = UIColor.clairvoyant()
        
        addSubviews(dad, mom, dave, andrea, emma, kate, noah, maika, kent, claire, ashley, tommy, maggie, jake, hannah, stephen, megan, naomi, jessie, kevin, kiki, sammy, sarah)
        addSubview(joey)
        addSubview(topLabel)
        addSubview(midLabel)
        addSubview(bottomLabel)
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
        
        dad.addConstraints(
            Constraint.tt.of(self, offset: parentHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        mom.addConstraints(
            Constraint.tt.of(self, offset: parentHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        dave.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        andrea.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        maika.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        kent.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        tommy.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        maggie.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        stephen.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        megan.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        jessie.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        kevin.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        joey.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        sammy.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        sarah.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        emma.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        kate.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        noah.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        jake.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        hannah.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        claire.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        ashley.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        naomi.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        kiki.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
    }
    
    override func animateWithPercent(percent: CGFloat) {
        var realPercent = (percent - 0.125) * 4
        
        if realPercent >= 0.5 {
            realPercent = 1.0 - realPercent
        }
        alpha = realPercent * 2
        
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
        
        dad.addConstraints(
            Constraint.tt.of(self, offset: parentHeight),
            Constraint.cxcx.of(self, offset: -20 * realPercent),
            Constraint.wh.of(18)
        )
        
        mom.addConstraints(
            Constraint.tt.of(self, offset: parentHeight),
            Constraint.cxcx.of(self, offset: 20 * realPercent),
            Constraint.wh.of(18)
        )
        
        dave.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 300 * realPercent),
            Constraint.wh.of(18)
        )
        
        andrea.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 260 * realPercent),
            Constraint.wh.of(18)
        )
        
        maika.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 200 * realPercent),
            Constraint.wh.of(18)
        )
        
        kent.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 160 * realPercent),
            Constraint.wh.of(18)
        )
        
        tommy.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 100 * realPercent),
            Constraint.wh.of(18)
        )
        
        maggie.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: 60 * realPercent),
            Constraint.wh.of(18)
        )
        
        stephen.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self),
            Constraint.wh.of(18)
        )
        
        megan.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -40 * realPercent),
            Constraint.wh.of(18)
        )
        
        jessie.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -140 * realPercent),
            Constraint.wh.of(18)
        )
        
        kevin.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -100 * realPercent),
            Constraint.wh.of(18)
        )
        
        joey.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -200 * realPercent),
            Constraint.wh.of(18)
        )
        
        sammy.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -250 * realPercent),
            Constraint.wh.of(18)
        )
        
        sarah.addConstraints(
            Constraint.tt.of(self, offset: siblingHeight),
            Constraint.cxcx.of(self, offset: -300 * realPercent),
            Constraint.wh.of(18)
        )
        
        emma.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight - (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 260 * realPercent),
            Constraint.wh.of(18)
        )
        
        kate.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight + (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 260 * realPercent),
            Constraint.wh.of(18)
        )
        
        noah.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight + (60 * realPercent)),
            Constraint.cxcx.of(self, offset: 260 * realPercent),
            Constraint.wh.of(18)
        )
        
        jake.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight - (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 60 * realPercent),
            Constraint.wh.of(18)
        )
        
        hannah.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight + (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 60 * realPercent),
            Constraint.wh.of(18)
        )
        
        claire.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight - (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 160 * realPercent),
            Constraint.wh.of(18)
        )
        
        ashley.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight + (20 * realPercent)),
            Constraint.cxcx.of(self, offset: 160 * realPercent),
            Constraint.wh.of(18)
        )
        
        naomi.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight - (20 * realPercent)),
            Constraint.cxcx.of(self, offset: -40 * realPercent),
            Constraint.wh.of(18)
        )
        
        kiki.addConstraints(
            Constraint.tt.of(self, offset: syskonBarnHeight - (20 * realPercent)),
            Constraint.cxcx.of(self, offset: -140 * realPercent),
            Constraint.wh.of(18)
        )
    }
}



class FamilyTreeCircle: UIView {
    
    //MARK: Properties
    
    //MARK: Inits
    convenience init() {
        self.init(frame: CGRectZero)
        layer.cornerRadius = 9
        backgroundColor = UIColor.earlyDawn()
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.mainScreen().scale
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}




