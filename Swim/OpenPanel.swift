//
//  OpenPanel.swift
//  Swim
//
//  Created by Ehren Murdick on 3/30/16.
//  Copyright © 2016 Ehren Murdick. All rights reserved.
//

import Cocoa

protocol OpenPanelProvider {
    func openPanel() -> NSOpenPanel
}

class OpenPanelProviderImpl: OpenPanelProvider {
    func openPanel() -> NSOpenPanel {
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        return openPanel
    }
}
