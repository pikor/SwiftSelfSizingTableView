//
//  SelfSizingTableViewCell.swift
//  SelfSizingTable
//
//  Created by Lukasz Pikor on 15.03.2016.
//  Copyright © 2016 Lukasz Pikor. All rights reserved.
//

import UIKit

class SelfSizingTableViewCell: UITableViewCell {
    
    @IBOutlet weak var textView: UITextView!
    
    struct ViewData {
        let title: String
    }
    
    var viewData: ViewData? {
        didSet {
            textView.text = viewData?.title
        }
    }
}
