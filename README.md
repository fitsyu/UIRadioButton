# UIRadioButton

Radio Button component for iOS for Swift.
This UI component has nothing to do with :radio: it was named that because the buttons in the old radio pop out when other button pressed. More about that can be found here.


[![CI Status](http://img.shields.io/travis/fitsyu/UIRadioButton.svg?style=flat)](https://travis-ci.org/fitsyu/UIRadioButton)
[![Version](https://img.shields.io/cocoapods/v/UIRadioButton.svg?style=flat)](http://cocoapods.org/pods/UIRadioButton)
[![License](https://img.shields.io/cocoapods/l/UIRadioButton.svg?style=flat)](http://cocoapods.org/pods/UIRadioButton)
[![Platform](https://img.shields.io/cocoapods/p/UIRadioButton.svg?style=flat)](http://cocoapods.org/pods/UIRadioButton)


## Preview

![Screenshot](Screenshots/UIRadioButton-Demo-App.png?raw=true "UIRadioButton")
## How to use

### From Storyboard

    1. Drag an UIView to your view controller


    2. In Identity Section at the right bar, change the class to UIRadioButton


    3. Customize the color of UIRadioButton


    4. Set initial value (off by default)

    

### From Code

    ```Swift

    let option1 = UIRadioButton()
    let option2 = UIRadioButton(color: UIColor.black() ,selected: true)

    \\ init and add later
    let group = UIRadioButtonGroup()
    group.add( option1 )
    group.add( option2 )

    \\ init with radio buttons
    let group = UIRadioButtonGroup( option1, option2 )


    

    ```


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

UIRadioButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "UIRadioButton"
```

## Author

fitsyu, fitsyu2@gmail.com

## License

UIRadioButton is available under the MIT license. See the LICENSE file for more info.
