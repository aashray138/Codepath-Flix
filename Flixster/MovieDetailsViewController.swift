//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by aashray Shrestha on 2/26/21.
//

import UIKit
import Alamofire

class MovieDetailsViewController: UIViewController {

    var movie : [String:Any]!
    
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        titleView.text = movie["title"] as? String
        titleView.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as?String
        synopsisLabel.sizeToFit()
        
        var base_url = "https://image.tmdb.org/t/p/w185"
        let posterpath = movie["poster_path"] as! String
        let posterURL = URL(string: base_url+posterpath)
        
        posterView.af.setImage(withURL: posterURL!)
        
        base_url = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: base_url+backdropPath)
        
        backdropView.af.setImage(withURL: backdropURL!)
        
    // Do any additional setup after loading the view.
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
