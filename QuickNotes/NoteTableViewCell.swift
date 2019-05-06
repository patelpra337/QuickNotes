//
//  NoteTableViewCell.swift
//  QuickNotes
//
//  Created by patelpra on 5/6/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteLabel: UILabel!
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        
        print("Share Tapped")
    }
    
}
