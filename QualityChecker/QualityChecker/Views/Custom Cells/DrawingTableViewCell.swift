//
//  DrawingTableViewCell.swift
//  QualityChecker
//
//  Created by Ben Erekson on 3/5/22.
//

import UIKit

class DrawingTableViewCell: UITableViewCell {
    //MARK: - IBOutlets
    @IBOutlet var DrawingNameLabel: UILabel!
    @IBOutlet var CreationDateLabel: UILabel!
    @IBOutlet var DrawingPicture: UIImageView!
    
    //MARK: - Properties
    var drawing: Drawing?
    
    //MARK: - Cell Lifecycles
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: - Cell functions
    func setupUI() {
        guard let drawing = drawing else {return}
        DrawingNameLabel.text = drawing.name
        CreationDateLabel.text = "Created: \(drawing.dateCreated.asString())"
        DrawingPicture.image = UIImage(data: drawing.drawingImage)
    }
}
