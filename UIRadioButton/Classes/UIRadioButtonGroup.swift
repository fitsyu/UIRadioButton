//
//  UIRadioButtonGroup.swift
//  Pods
//
//  Created by Fitsyu on 11/8/16.
//
//


import Foundation

public class UIRadioButtonGroup {
    
    var radioButtons: [UIRadioButton] = []
    var selectedRadioButton: UIRadioButton?
    
    public var count: Int { return radioButtons.count }
    
    public init(){}
    
    public init(radioButtons: [UIRadioButton]) {
        self.radioButtons = radioButtons
    }
    
    public func add(_ radioButton: UIRadioButton) {
        radioButtons.append(radioButton)
        radioButton.group = self
    }
    
    public func del(_ radioButton: UIRadioButton) {
        if let idx = radioButtons.firstIndex(of: radioButton) {
            radioButtons.remove(at: idx)
            radioButton.group = nil
        }
    }
    
    
    
    
    public func select(_ radioButton: UIRadioButton) {
        deselectAll()
        radioButton.isSelected = true
        
        selectedRadioButton = radioButton
    }
    
    public func deselectAll() {
        for button in radioButtons {
            button.isSelected = false
        }
    }
}
