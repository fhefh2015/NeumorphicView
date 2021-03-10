//
//  AppDelegate.swift
//  NemorphicView
//
//  Created by Sergii Kryvoblotskyi on 2/6/20.
//  Copyright © 2020 Sergii Kryvoblotskyi. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        NotificationCenter.default.addObserver(self, selector: #selector(self.windowClose(_:)), name: NSWindow.willCloseNotification, object: nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    @objc func windowClose(_ aNotification: Notification) {

        if let window = aNotification.object as? NSWindow {

            NSApp.terminate(window)
        }

    }


}

