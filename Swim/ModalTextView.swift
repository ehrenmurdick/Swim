//
//  ModalTextView.swift
//  Swim
//
//  Created by Ehren Murdick on 3/30/16.
//  Copyright © 2016 Ehren Murdick. All rights reserved.
//

import Cocoa

class ModalTextView: NSTextView {
    func open(url: NSURL) throws {
        let body = try String(contentsOfURL: url)
        textStorage?.setAttributedString(NSAttributedString(string: body))
    }
}
