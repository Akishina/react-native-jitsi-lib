
# react-native-jitsi-lib

## Getting started

`$ npm install react-native-jitsi-lib --save`

### Mostly automatic installation

`$ react-native link react-native-jitsi-lib`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-jitsi-lib` and add `RNJitsiLib.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNJitsiLib.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNJitsiLibPackage;` to the imports at the top of the file
  - Add `new RNJitsiLibPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-jitsi-lib'
  	project(':react-native-jitsi-lib').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-jitsi-lib/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-jitsi-lib')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNJitsiLib.sln` in `node_modules/react-native-jitsi-lib/windows/RNJitsiLib.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Jitsi.Lib.RNJitsiLib;` to the usings at the top of the file
  - Add `new RNJitsiLibPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNJitsiLib from 'react-native-jitsi-lib';

// TODO: What to do with the module?
RNJitsiLib;
```
  