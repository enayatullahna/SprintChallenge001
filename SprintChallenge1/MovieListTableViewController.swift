//
//  MovieListTableViewController.swift
//  SprintChallenge1
//
//  Created by Enayatullah Naseri on 5/3/19.
//  Copyright © 2019 Enayatullah Naseri. All rights reserved.
//

import UIKit

class MovieListTableViewController: UITableViewController, MovieControllerProtocol {
    var movieController: MovieController?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movieController?.movies.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)

        guard let movie = movieController?.movies[indexPath.row] else {return UITableViewCell()}
        cell.textLabel?.text = movie.name

        return cell
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
