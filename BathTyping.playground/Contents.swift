//: Playground - noun: a place where people can play

import AVFoundation

var engine = AVAudioEngine()
var input = engine.inputNode
var output = engine.outputNode
var format = input.inputFormatForBus(0)
var error:NSError?

var reverb = AVAudioUnitReverb()
reverb.loadFactoryPreset(.LargeHall2)
reverb.wetDryMix = 50
engine.attachNode(reverb)

engine.connect(input, to: reverb, format: format)
engine.connect(reverb, to: output, format: format)

while true {
    engine.startAndReturnError(&error)
    sleep(10000)
}

