//
//  AppDelegate.swift
//  ToDoList
//
//  Created by Sophie Wong on 27/09/16.
//  Copyright © 2016 cosc346. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var toDoTableView: NSTableView!
    @IBOutlet weak var newItemField: NSTextField!
    
    var items = NSMutableArray()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func loadTable() {
        toDoTableView.insertRowsAtIndexes(NSIndexSet(index: items.count-1), withAnimation: NSTableViewAnimationOptions.SlideUp)
        
        var rowIndex = 0
        for item in items {
            if let row =  toDoTableView.rowViewAtRow(rowIndex, makeIfNecessary: true){
                row.setAccessibilityVisibleCells([item])
            }
            rowIndex += 1
        }
    }
    
    @IBAction func createNewItem(sender: NSButton) {
        loadTable()
        let newItem = newItemField.stringValue
        items.addObject(newItem)
        
        let newIndex = items.count
        toDoTableView.insertRowsAtIndexes(NSIndexSet(index: newIndex), withAnimation: NSTableViewAnimationOptions.SlideUp)

        if let row =  toDoTableView.rowViewAtRow(newIndex, makeIfNecessary: true){
            row.set([newItem])
        }
        
        toDoTableView.reloadData()
    }
}

