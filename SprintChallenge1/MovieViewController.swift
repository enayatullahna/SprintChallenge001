//
//  MovieViewController.swift
//  SprintChallenge1
//
//  Created by Enayatullah Naseri on 5/3/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    @IBOutlet weak var movieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movie = movieTextField.text,
            let text = movieTextField.text else {return}
        
        movieController?.createMovie(name: movie)
        movieController?.createMovie(name: text)
        if (movieTextField.text != "")
        {
            list.append(movieTextField.text!)
            movieTextField.text = ""
        }
    
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
