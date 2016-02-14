//
//  AppDelegate.swift
//  Bluetooth Battery Tracker
//
//  Created by Chris Home on 14/02/2016.
//  Copyright © 2016 Christmas House. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)

    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        if let button = statusItem.button
        {
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = Selector("printQuote:")
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func printQuote(sender: AnyObject)
    {
        let quote = "This shizzle works, that's dope"
        print(quote)
    }

}

