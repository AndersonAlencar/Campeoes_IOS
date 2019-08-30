//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Anderson Alencar on 11/07/19.
//  Copyright © 2019 Anderson Alencar. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController {

    
    
    
    @IBOutlet weak var ivWinner: UIImageView!
    @IBOutlet weak var ivVice: UIImageView!
    @IBOutlet weak var lbFinalScore: UILabel!
    @IBOutlet weak var lbWinner: UILabel!
    @IBOutlet weak var lbVice: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var worldCup: WorldCup!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView = UITableView(frame: CGRect.zero, style: .grouped)
        
        
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "WorldCup \(worldCup.year)"
        self.lbFinalScore.adjustsFontSizeToFitWidth = true
        self.lbFinalScore.minimumScaleFactor = 0.5
        
        self.ivWinner.image = UIImage(named: "\(worldCup.winner)")
        self.ivVice.image = UIImage(named: "\(worldCup.vice)")
        self.lbFinalScore.text = "\(worldCup.winnerScore) X \(worldCup.viceScore)"
        self.lbWinner.text = worldCup.winner
        self.lbVice.text = worldCup.vice
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension WorldCupViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return self.worldCup.matches.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let games = self.worldCup.matches[section].games
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! GamesTableViewCell
        
        cell.prepareCell(with: worldCup.matches[indexPath.section].games[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return worldCup.matches[section].stage
        
    }
    
    
    
    
}
