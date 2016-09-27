//
//  AppDelegate.swift
//  ConstrainedWindow
//
//  Created by Sophie Wong on 27/09/16.
//  Copyright © 2016 cosc346. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func windowWillResize(sender: NSWindow, frameSize: NSSize){
        let size = NSSize(width: 2*frameSize.height, height: frameSize.height)
        sender.setContentSize(size)
    }
}

