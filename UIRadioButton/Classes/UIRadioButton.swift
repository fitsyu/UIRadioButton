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
    
    @IBInspectable var color: UIColor = UIColor.orangeColor()
    @IBInspectable override public var selected: Bool {
        didSet {
            setNeedsDisplay()
            sendActionsForControlEvents(.ValueChanged)
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
    
//    init(color: UIColor, selected: Bool){
//        self.selected = selected
//        tintColor     = color
//    }
    
    func construct() {
        tintColor = color
        backgroundColor = UIColor.clearColor()
    }
    
    // ==================================================
    
    
    // MARK: Interaction logic
    var group: UIRadioButtonGroup?
    
    override public func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        if let _ = group {
            group!.select(self)
        } else {
            toggleSelected()
        }
    }
    
    func toggleSelected() {
        selected = !selected
    }
    
    
    
    // ==================================================
    
    // MARK: The Magic
    override public func drawRect(rect: CGRect) {

        // draw the outer ring
        var margin = CGFloat(2)
        
        let radio = UIBezierPath(ovalInRect: rect.insetBy(dx: margin, dy: margin))
        color.setStroke()
        radio.lineWidth = 2.0
        radio.stroke()
        
        // draw the inner hole
        if selected {
            margin = CGFloat(6)
            
            let button = UIBezierPath(ovalInRect: rect.insetBy(dx: margin, dy: margin))
            color.setFill()
            button.fill()
        }
    }
}
