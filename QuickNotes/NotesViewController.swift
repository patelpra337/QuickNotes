//
//  NotesViewController.swift
//  QuickNotes
//
//  Created by patelpra on 5/6/19.
//  Copyright © 2019 Pravin Patel. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tablleView.delegate = self
        tablleView.dataSource = self

        
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    let noteController = NoteController()

    @IBOutlet weak var tablleView: UITableView!
}

extension NotesViewController: UITableViewDelegate {
    
}

extension NotesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noteController.notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath)
        
        // Convert to custom cell - using Guard let
        guard let noteCell = cell as? NoteTableViewCell else { return cell }
        
        // Get the note for the row
        let note = noteController.notes[indexPath.row]
        
        // cell.backgroundColor = .yellow // This block of code was used to test earlier
        
        // This is the custom class that has those two attributes func and NewNote cell
        noteCell.noteLabel.text = note.text
        
        return cell
    }
    
    
}
