//
//  NoteController.swift
//  QuickNotes
//
//  Created by patelpra on 5/6/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import Foundation

class NoteController {
    
    var notes: [Note] = [] // Create an empty Array of notes
    
    func createNote(withText text: String) {
        let note = Note(text: text)
        
        notes.append(note)
    }
}
