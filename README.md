# BCrypt for Swift

Fork of https://github.com/aberkunov/PerfectBCrypt.git, packaged for Swift Package Manager.


## Original description

This is the Perfect-BCrypt module written in Swift and adopted to use in iOS as a CocoaPod dependency. The original module is being used in the Perfect Toolkit, see [PerfectSideRepos/PerfectBCrypt](https://github.com/PerfectSideRepos/PerfectBCrypt) for more details 

### Usage

```swift
import BCrypt

let password = "mypassword"
do {
    let salt = try BCrypt.Salt()
    let hashed = try BCrypt.Hash(password, salt: salt)
    print("Hashed result is: \(hashed)")
}
catch {
    print("An error occured: \(error)")
}
```

### Requirements

- iOS 10.0+
- Xcode 10.1+
- Swift 4.2+

## Credits

Owner of forked repository: Alexander Berkunov, https://github.com/aberkunov, alexander.berkunov@gmail.com

## License

BCrypt is available under the MIT license: https://opensource.org/license/mit-0/.
