//
//  DetailCollectionViewCell.swift
//  task3
//
//  Created by mac on 21.01.2021.
//

import UIKit

class DetailCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var sectionName: UILabel!
    @IBOutlet weak var webTitle: UILabel!
    @IBOutlet weak var webPublicationDate: UILabel!
    
    var controller: DetailViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func setDataToCell(sectionName: String, webTitle: String, webPublicationDate: String,
                              controller: DetailViewController) {
       
        self.sectionName.text = sectionName
        self.webTitle.text = webTitle
        self.webPublicationDate.text = webTitle
        self.controller = controller
    }
}
