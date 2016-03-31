//
//  ViewController.swift
//  Swim
//
//  Created by Ehren Murdick on 3/30/16.
//  Copyright © 2016 Ehren Murdick. All rights reserved.
//

import Cocoa

class EditingViewController: NSViewController {
    @IBOutlet var editor: ModalTextView!
    
    func openDocument(sender: AnyObject) {
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        let i = openPanel.runModal()
        if(i == NSModalResponseOK){
            print(openPanel.URL)
            try! editor.open(openPanel.URL!)
        }
    }
}

