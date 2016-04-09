//
//  CircularCollectionViewCell.swift
//  CircularCollectionView
//
//  Created by Rounak Jain on 10/05/15.
//  Copyright (c) 2015 Rounak Jain. All rights reserved.
//

import UIKit

class CircularCollectionViewCell: UICollectionViewCell {
  
    //MARK: Properties
    var viewContainer = UIView()
    
    //MARK: Inits
    convenience init() {
        self.init(frame: CGRectZero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: View Configuration
    
    override func prepareForReuse() {
        super.prepareForReuse()
        viewContainer.removeFromSuperview()
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        configureSubviews()
        applyConstraints()
    }
    
    func configureSubviews(){
        contentView.layer.shouldRasterize = true
        contentView.layer.rasterizationScale = UIScreen.mainScreen().scale
        contentView.clipsToBounds = true
//            contentView.layer.borderWidth = 2.0
//            contentView.layer.borderColor = UIColor.blueColor().CGColor
        
        viewContainer.backgroundColor = UIColor.clearColor()
        
        backgroundColor = UIColor.clearColor()
        
        addSubview(viewContainer)
    }
    
    func applyConstraints(){
        viewContainer.addConstraints(
            Constraint.cxcx.of(self),
            Constraint.cycy.of(self),
            Constraint.w.of(screenWidth),
            Constraint.h.of(screenHeight)
        )
    }
    
    override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes) {
        super.applyLayoutAttributes(layoutAttributes)
        let circularlayoutAttributes = layoutAttributes as! CircularCollectionViewLayoutAttributes
        self.layer.anchorPoint = circularlayoutAttributes.anchorPoint
        self.center.y += (circularlayoutAttributes.anchorPoint.y - 0.5)*CGRectGetHeight(self.bounds)
    }
  
}
