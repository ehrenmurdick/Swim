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
    var openPanelProvider: OpenPanelProvider!
    
    func openDocument(sender: AnyObject) {
        let openPanel = openPanelProvider.openPanel()
        let i = openPanel.runModal()
        if(i == NSModalResponseOK){
            print(openPanel.URL)
            try! editor.open(openPanel.URL!)
        }
    }
}

