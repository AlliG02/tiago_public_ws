
"use strict";

let FeatureWithColour = require('./FeatureWithColour.js');
let BodyPixMask = require('./BodyPixMask.js');
let Detection = require('./Detection.js');
let ColourPrediction = require('./ColourPrediction.js');
let BodyPixPose = require('./BodyPixPose.js');
let BodyPixMaskRequest = require('./BodyPixMaskRequest.js');

module.exports = {
  FeatureWithColour: FeatureWithColour,
  BodyPixMask: BodyPixMask,
  Detection: Detection,
  ColourPrediction: ColourPrediction,
  BodyPixPose: BodyPixPose,
  BodyPixMaskRequest: BodyPixMaskRequest,
};
