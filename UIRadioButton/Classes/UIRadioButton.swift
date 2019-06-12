//
//  UIRadioButton.swift
//  Pods
//
//  Created by Fitsyu on 11/8/16.
//
//

import UIKit

@IBDesignable
public class UIRadioButton: UIControl {
    
    // MARK: Inspectables
    
    @IBInspectable var color: UIColor = UIColor.orange
    @IBInspectable override public var isSelected: Bool {
        didSet {
            setNeedsDisplay()
            sendActions(for: .valueChanged)
        }
    }
    
    
    // ==================================================
    
    
    // MARK: initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        construct()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        construct()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        construct()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        construct()
    }
    
//    init(color: UIColor, isSelected: Bool){
//        self.isSelected = isSelected
//        tintColor     = color
//    }
    
    func construct() {
        tintColor = color
        backgroundColor = UIColor.clear
    }
    
    // ==================================================
    
    
    // MARK: Interaction logic
    var group: UIRadioButtonGroup?
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let group = group {
            group.select(self)
        } else {
            toggleSelected()
        }
    }

    
    func toggleSelected() {
        isSelected = !isSelected
    }
    
    
    
    // ==================================================
    
    // MARK: The Magic
    override public func draw(_ rect: CGRect) {

        // draw the outer ring
        var margin = CGFloat(2)
        
        let radio = UIBezierPath(ovalIn: rect.insetBy(dx: margin, dy: margin))
        color.setStroke()
        radio.lineWidth = 2.0
        radio.stroke()
        
        // draw the inner hole
        if isSelected {
            margin = CGFloat(6)
            
            let button = UIBezierPath(ovalIn: rect.insetBy(dx: margin, dy: margin))
            color.setFill()
            button.fill()
        }
    }
}
