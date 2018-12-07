//
//  MissionTableViewCell.swift
//  Portefeuille
//
//  Created by Jesus Enrique Nava Sanchez on 06/12/2018.
//  Copyright © 2018 Jesus Enrique Nava Sanchez. All rights reserved.
//

import UIKit
protocol MissionCellDelegate {
    func didRequestDelete (_ cell:MissionTableViewCell)
    func didRequestComplete ()
}

class MissionTableViewCell: UITableViewCell {

    
    @IBOutlet weak var missionLabel: UILabel!
    
    var delegate:MissionCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    @IBAction func completeMission(_ sender: Any) {
        if let delegateObject = self.delegate{
            delegateObject.didRequestComplete()
        }
    }
    
    @IBAction func deteleMission(_ sender: Any) {
        if let delegateObject = self.delegate{
            delegateObject.didRequestDelete(self)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
