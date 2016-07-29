# LoadingButton

[![CI Status](http://img.shields.io/travis/Septiyan Andika Isanta/LoadingButton.svg?style=flat)](https://travis-ci.org/Septiyan Andika Isanta/LoadingButton)
[![Version](https://img.shields.io/cocoapods/v/LoadingButton.svg?style=flat)](http://cocoapods.org/pods/LoadingButton)
[![License](https://img.shields.io/cocoapods/l/LoadingButton.svg?style=flat)](http://cocoapods.org/pods/LoadingButton)
[![Platform](https://img.shields.io/cocoapods/p/LoadingButton.svg?style=flat)](http://cocoapods.org/pods/LoadingButton)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Preview

![Loading Buuton Preview](https://raw.githubusercontent.com/SeptiyanAndika/LoadingButton/master/preview/loading-button.gif)

## Installation
1. Just add LoadingButton.swift file to your project,  file are present inside LoadingButton/Classes directory.

2. LoadingButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LoadingButton" 
```


## Properties
```swift
var loading:Bool 

example :
loginButton.loading = true
loginButton.loading = false
```
 * start and stop loading button
 

```swift
var indicatorAlignment:ActivityIndicatorAlignment

example :
loginButton.indicatorAlignment = .Right
signupButton.indicatorAlignment = .Left
```
 * Set position ActivityIndicator in left or right title
 
```swift
var loadingText:String

example :
loginButton.loadingText = "Authenticating "
```
 * Text for title label when activity indicator is animating / loading
 
```swift
var indicatorColor:UIColor

example :
loginButton.indicatorColor = UIColor.redColor()
```
 * The color of the activity indicator
 
## Author

Septiyan Andika Isanta, septiyan.andika@gmail.com

## License

LoadingButton is available under the MIT license. See the LICENSE file for more info.
