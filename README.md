<p align="center">
 <img src="https://raw.githubusercontent.com/Abedalkareem/AMPagerTabs/master/amtabspager.png"  >
</p>
Pager tabs for iOS.

</br>
</br>
</br>

<b>ScreenShots</b>

<img src="https://github.com/Abedalkareem/AMPagerTabs/blob/master/Screen%20Shot.png"  width="450">

<b>Usage</b>

1-In the ```ViewController``` you want to show the tabs in inherit the AMPagerTabsViewController
```swift
class ViewController: AMPagerTabsViewController {
.....
```

2-In the ```viewDidLoad```, set the viewControllers to your array of viewcontollers
```swift
   override func viewDidLoad() {
        super.viewDidLoad()

        // to change the font
        self.tabFont = UIFont.systemFont(ofSize: 17, weight: .bold)

        self.viewControllers = getTabs()


        
    }
    
    func getTabs() -> [UIViewController]{
        // instantiate the viewControllers
        let airplaneViewController = self.storyboard?.instantiateViewController(withIdentifier: "airplaneViewController")
        let giftViewController = self.storyboard?.instantiateViewController(withIdentifier: "giftViewController")
        let shoeViewController = self.storyboard?.instantiateViewController(withIdentifier: "shoeViewController")
        
         // set the title for the tabs
        airplaneViewController?.title = "Airplane"
        shoeViewController?.title = "Shoe"
        giftViewController?.title = "Gift"

        return [airplaneViewController!,giftViewController!,shoeViewController!]
    }
```


<b>Customisation</b>

To customis the tabs, use the settings object before seting the viewControllers
```swift
   override func viewDidLoad() {
        super.viewDidLoad()

        self.settings.tabBackgroundColor = UIColor.red
        self.settings.tabButtonColor = UIColor.red
        self.settings.initialTabWidth = 100
        self.settings.pagerBackgroundColor = UIColor.white
        self.settings.tabButtonTitleColor = UIColor.white
        self.settings.tabHeight = 100

        self.viewControllers = [your view controllers]


        
    }
   
```



## Installation

AMPagerTabs is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AMPagerTabs'
```

<b>Note</b>

I'm going to be very happy if you give me a feedback or advice , thank you

<b>License</b>

```
The MIT License (MIT)

Copyright (c) 2017 Abedalkareem Omreyh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
