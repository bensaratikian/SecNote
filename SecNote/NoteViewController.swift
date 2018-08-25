//
//  NoteViewController.swift
//  SecNote
//
//  Created by Ben on 8/25/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {

    //MARK:- Properties
    private var notes: [Note] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    //MARK:- Actions
    
    @IBAction func addButton() {
        
    }

}

//MARK:- TableView's Delegate & DataSource

extension NoteViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as! NoteTableViewCell
        let currentNote = notes[indexPath.row]
        cell.nameLabel.text = currentNote.name
        return cell
    }
    
}
