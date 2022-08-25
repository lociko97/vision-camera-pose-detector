# vision-camera-pose-detector

A [VisionCamera](https://github.com/mrousavy/react-native-vision-camera) Frame Processor Plugin for MLKit Pose Detection.

## Installation

```sh
npm install https://github.com/lociko97/vision-camera-pose-detector
cd ios && pod install
```

Add the plugin to your `babel.config.js`:

```js
module.exports = {
  plugins: [
    [
      'react-native-reanimated/plugin',
      {
        globals: ['__scanPoses'],
      },
    ],
  ]
```

> Note: You have to restart metro-bundler for changes in the `babel.config.js` file to take effect.

## Usage

```javascript
import {scanPoses} from 'vision-camera-pose-detector';
import {Camera, useFrameProcessor} from 'react-native-vision-camera';
import 'react-native-reanimated';

const frameProcessor = useFrameProcessor((frame) => {
  'worklet'
  const pose = __scanPoses(frame)
  console.log(pose.leftThumb?.inFrameLikelihood) // or whatever
}, [])
```
In your component
 ``` javascript
    <Camera
      // other Vision Camera props
      frameProcessor={frameProcessor}
    />

```

Returns an empty object if nothing was found or a Pose object with names of landmarks as keys and Landmark objects as their values.

You can see the list of possible landmarks and other info here: https://developers.google.com/ml-kit/vision/pose-detection


### Landmark Object
| Property          |  Type  | Description                              |
| ------------------------- | :----: | :--------------------------------------- |
| inFrameLikelihood | number | The likelihood that a PoseLandmark is within the image frame |
| x | number | PoseLandmark's x coordinate on frame |
| y | number | PoseLandmark's y coordinate on frame |
| z | number | PoseLandmark's z coordinate on frame (experimental) |



## Credits

This is basically a rewritten version of https://github.com/rodgomesc/vision-camera-face-detector but for Pose Detection, so obviously big shout out to https://github.com/rodgomesc and everyone involved in React Native Vision Camera


## License

MIT
