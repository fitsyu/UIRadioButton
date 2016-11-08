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
    
    public func add(radioButton: UIRadioButton) {
        radioButtons.append(radioButton)
        radioButton.group = self
    }
    
    public func del(radioButton: UIRadioButton) {
        if let idx = radioButtons.indexOf(radioButton) {
            radioButtons.removeAtIndex(idx)
            radioButton.group = nil
        }
    }
    
    
    
    
    public func select(radioButton: UIRadioButton) {
        deselectAll()
        radioButton.selected = true
        
        selectedRadioButton = radioButton
    }
    
    public func deselectAll() {
        for button in radioButtons {
            button.selected = false
        }
    }
}