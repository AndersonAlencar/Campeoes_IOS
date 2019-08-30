//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Anderson Alencar on 13/07/19.
//  Copyright © 2019 Anderson Alencar. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivHome: UIImageView!
    @IBOutlet weak var ivAway: UIImageView!
    @IBOutlet weak var lbHome: UILabel!
    @IBOutlet weak var lbAway: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func prepareCell(with game: Games) {
        
        self.ivHome.image = UIImage(named: "\(game.home)")
        self.ivAway.image = UIImage(named: "\(game.away)")
        self.lbHome.text = "\(game.home)"
        self.lbAway.text = "\(game.away)"
        self.lbScore.text = "\(game.score)"
        
    }

}
