# SLNavigationBar

A simple custom navigation bar, Create SLBarButtonItem just like create UIBarButtonItem style, convenient to extend the Navigationbar.

[![CI Status](http://img.shields.io/travis/Lilu/SLNavigationBar.svg?style=flat)](https://travis-ci.org/Lilu/SLNavigationBar)
[![Version](https://img.shields.io/cocoapods/v/SLNavigationBar.svg?style=flat)](http://cocoapods.org/pods/SLNavigationBar)
[![License](https://img.shields.io/cocoapods/l/SLNavigationBar.svg?style=flat)](http://cocoapods.org/pods/SLNavigationBar)
[![Platform](https://img.shields.io/cocoapods/p/SLNavigationBar.svg?style=flat)](http://cocoapods.org/pods/SLNavigationBar)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

###SLBarButtonItem
Add a barBottunItem: 
```objective-c
SLBarButtonItem *leftItem = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_user"] target:self action:@selector(userClick:)];
    self.naviBar.leftItem = leftItem;
```

Add a few of barBottonItems:
```objective-c
SLBarButtonItem *rightItem1 = [[SLBarButtonItem alloc] initWithImage:[  UIImage imageNamed:@"titlebar_more"] target:self action:@selector(rightItemClick:)];
SLBarButtonItem *rightItem2 = [[SLBarButtonItem alloc] initWithTitle:@"删除" target:self action:@selector(rightItemClick:)];
self.naviBar.rightItems = @[rightItem1, rightItem2];
```

###SLBaseViewController
The ViewController which is Inheritance from SLBaseViewController, can override method initNaviBar.You can set default SLNavigationBar title use the following method:
```objective-c
self.title = @"SLNavigationBar Demo";
```


## Requirements

## Installation

SLNavigationBar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "SLNavigationBar"
```

## Author

Smilelu, hmilyt@foxmail.com

## License

SLNavigationBar is available under the MIT license. See the LICENSE file for more info.
=======
