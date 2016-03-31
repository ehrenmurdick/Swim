//
//  SwinjectStoryboard+setup.swift
//  Swim
//
//  Created by Ehren Murdick on 3/30/16.
//  Copyright © 2016 Ehren Murdick. All rights reserved.
//

import Foundation
import Swinject

extension SwinjectStoryboard {    
    class func setup() {
        defaultContainer.registerForStoryboard(EditingViewController.self) {
            (r, c) in
            c.openPanelProvider = r.resolve(OpenPanelProvider.self)
        }
        
        defaultContainer.register(OpenPanelProvider.self) { _ in OpenPanelProviderImpl() }
    }
}