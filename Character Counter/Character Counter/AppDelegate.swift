//
//  AppDelegate.swift
//  Character Counter
//
//  Created by Sophie Wong on 28/09/16.
//  Copyright © 2016 cosc346. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var newStringField: NSTextField!
    @IBOutlet weak var charCountLabel: NSTextField!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func countCharacters(sender: AnyObject) {
        var result: String = "'"+newStringField.stringValue+"'"
        result += " has \(result.characters.count) characters"
        charCountLabel.stringValue = result
    }

}

