
"use strict";

let YoloDetection = require('./YoloDetection.js')
let TorchFaceFeatureDetection = require('./TorchFaceFeatureDetection.js')
let BodyPixDetection = require('./BodyPixDetection.js')
let Recognise = require('./Recognise.js')

module.exports = {
  YoloDetection: YoloDetection,
  TorchFaceFeatureDetection: TorchFaceFeatureDetection,
  BodyPixDetection: BodyPixDetection,
  Recognise: Recognise,
};
