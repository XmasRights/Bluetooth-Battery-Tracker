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
    let popover    = NSPopover()
    
    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        if let button = statusItem.button
        {
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = Selector("togglePopover:")
        }
        
        popover.contentViewController = DeviceTableViewController(nibName: "DeviceTableViewController", bundle: nil)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func showPopover(sender: AnyObject?)
    {
        if let button = statusItem.button
        {
            popover.showRelativeToRect(button.bounds, ofView: button, preferredEdge: NSRectEdge.MinY)
        }
    }
    
    func closePopover(sender: AnyObject?)
    {
        popover.performClose(sender)
    }
    
    func togglePopover (sender: AnyObject?)
    {
        if popover.shown
        {
            closePopover(sender)
        }
        else
        {
            showPopover(sender)
        }
    }
}

