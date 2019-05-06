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
    
    init() {
        // Create test data for sanity checks!!!!
        createNote(withText: "Walk the dog")
        createNote(withText: "Eat the lunch!")
    }
    
    func createNote(withText text: String) {
        let note = Note(text: text)
        
        
        
        notes.append(note)
    }
}
