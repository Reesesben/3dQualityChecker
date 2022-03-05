//
//  DrawingsTableViewController.swift
//  QualityChecker
//
//  Created by Ben Erekson on 3/5/22.
//

import UIKit

class DrawingsTableViewController: UITableViewController {
    //MARK: - Properties
    var drawings: [Drawing] = [Drawing(name: "Test", dateCreated: Date(), dateEdited: Date(), drawingImage: UIImage(systemName: "plus")!.jpegData(compressionQuality: 0.75)!)]
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drawings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "drawingCell", for: indexPath) as? DrawingTableViewCell else { return UITableViewCell() }
        
        cell.drawing = drawings[indexPath.row]
        cell.setupUI()

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            drawings.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
