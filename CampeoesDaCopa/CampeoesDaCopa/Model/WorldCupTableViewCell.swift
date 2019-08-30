//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Anderson Alencar on 13/07/19.
//  Copyright © 2019 Anderson Alencar. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var lbWinnerScore: UILabel!
    @IBOutlet weak var lbViceScore: UILabel!
    @IBOutlet weak var lbCountry: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func prepareCell(with cup: WorldCup) {
        
        self.lbYear.text = "\(cup.year)"
        self.ivWinner.image = UIImage(named: cup.winner)
        self.ivVice.image = UIImage(named: cup.vice)
        self.lbWinner.text = cup.winner
        self.lbVice.text = cup.vice
        self.lbWinnerScore.text = cup.winnerScore
        self.lbViceScore.text = cup.viceScore
        self.lbCountry.text = cup.country
        
    }

    
}
