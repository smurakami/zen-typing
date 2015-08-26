//: Playground - noun: a place where people can play

import AVFoundation

var engine = AVAudioEngine()
var input = engine.inputNode
var output = engine.outputNode
var format = input.inputFormatForBus(0)
var error:NSError?

engine.connect(input, to: output, format: format)

while true {
    engine.startAndReturnError(&error)
    sleep(10000)
}
