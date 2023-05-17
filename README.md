# PerAppSampleApp-iOS

![badge-languages] ![badge-platforms] ![badge-mit] ![badge-OS]

This sample app based on PerApp language feature provided by Apple for iOS 13 and above. This also contains state restoration feature.
After changing app language from App Settings, app will relaunch and it preserves previous UI state. 

**State Restoration**
- **Storyboard**: This is added in interface builder. In view controller's indentity inspector restoration identifier added same name as VC. 
- **Programmatically**: 
    1. _Restoration Identifier_: While creating VC programmatically, the restoration identifier should be given manually either while creating instance or in viewDidLoad life cycle method. 
    2. _Restoration Class_: We need to provide restoration class.
    3. _UIViewControllerRestoration_: ViewController should implement 'UIViewControllerRestoration' method.
    For all the deatils see 'ProfileSettingsVC' class.


## DemoVideo

<img src="https://github.com/RPiyush/PerAppSampleApp-iOS/assets/5211430/c720345a-f17d-4c8b-b116-c41d88ed9109" width="300" height="650">


[badge-platforms]: https://img.shields.io/badge/platforms-iOS-lightgrey.svg
[badge-languages]: https://img.shields.io/badge/language-Swift-orange
[badge-mit]: https://img.shields.io/badge/license-MIT-blue.svg
[badge-OS]: https://img.shields.io/badge/os-iOS%2013%20%26%20above-yellowgreen
