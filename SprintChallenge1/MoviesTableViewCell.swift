//
//  MoviesTableViewCell.swift
//  SprintChallenge1
//
//  Created by Enayatullah Naseri on 5/3/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    
    
    
    var movie: Movie? {
        didSet {
            updateViews()
            
        }
    }
    @IBOutlet weak var textLableCell: UILabel!
    @IBOutlet weak var seenNotseen: UIButton!
    
    func updateViews() {
        guard let movie = movie else {return}
        textLableCell.text = textLableCell.text
        if (movie.notSeen) {
            seenNotseen.setTitle("Seen", for: .normal)
        } else {
            seenNotseen.setTitle("Not Seen", for: .normal)
        }
        
    }
    

}
