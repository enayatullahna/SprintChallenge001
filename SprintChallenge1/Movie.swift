//
//  Movie.swift
//  SprintChallenge1
//
//  Created by Enayatullah Naseri on 5/3/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var notSeen: Bool
    
    init (name: String, notSeen: Bool = false) {
        self.name = name
        self.notSeen = notSeen
    }
    
}
