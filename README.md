# react-native-biometric-authentication

## Installation

```shell
npm i --save react-native-biometric-authentication
```

or

```shell
yarn add react-native-biometric-authentication
```


## Usage

### Linking the Library

In order to use biometric auth, you must first link the library to your project.

#### Using react-native link

Use the built-in command:

```shell
react-native link react-native-biometric-authentication
```

#### Using Cocoapods (iOS only)

On iOS you can also link package by updating your podfile

```ruby
pod 'TouchID', :path => "#{node_modules_path}/react-native-biometric-authentication"
```

and then run

```shell
pod install
```


## App Permissions
Add the following permissions to their respective files:

In your Info.plist:


```xml
<key>RNFaceAuthentication</key>
<string>faceAuthentication</string>
account.</string>
```

### Requesting Face ID Authentication

```js
import { authorize } from 'react-native-biometric-authentication';

// ...

const result = await authorize();
```


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
