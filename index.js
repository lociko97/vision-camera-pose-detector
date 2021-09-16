// main index.js

import type { Frame } from 'react-native-vision-camera'

export function scanPoses(frame: Frame): any[] {
  'worklet';
  // @ts-ignore
  // eslint-disable-next-line no-undef
  return __scanPoses(frame);
}
