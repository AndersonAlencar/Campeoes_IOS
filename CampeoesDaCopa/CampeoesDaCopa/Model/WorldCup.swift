//
//  WorldCup.swift
//  CampeoesDaCopa
//
//  Created by Anderson Alencar on 11/07/19.
//  Copyright © 2019 Anderson Alencar. All rights reserved.
//

import Foundation

struct WorldCup: Codable {
    
    let year: Int
    let country: String
    let winner: String
    let vice: String
    let winnerScore: String
    let viceScore: String
    let matches: [Match]
    
}




