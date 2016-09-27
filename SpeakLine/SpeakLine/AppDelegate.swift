//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Sophie Wong on 27/09/16.
//  Copyright © 2016 cosc346. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSSpeechSynthesizerDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var ourText: NSTextField!
    let speechSynth = NSSpeechSynthesizer()

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        /*let voices = NSSpeechSynthesizer.availableVoices()
        for i in voices{
            print(i)
        }
        */
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func sayIt(sender: NSButton) {
        if(!speechSynth.speaking){
            speechSynth.startSpeakingString(ourText.stringValue)
        }
    }
    
    @IBAction func stopIt(sender: NSButton) {
        if(ourText.stringValue != ""){
            speechSynth.stopSpeaking()
        }
    }
    
}

