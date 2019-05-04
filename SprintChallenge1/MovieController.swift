//
//  MovieController.swift
//  SprintChallenge1
//
//  Created by Enayatullah Naseri on 5/3/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import Foundation


class MovieController {
    
    var movies: [Movie] = []
    
    func createMovie (name: String){
        let movie = Movie(name: name)
        
        movies.append(movie)
    }
    
}
