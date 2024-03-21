//
//  DetailViewController.swift
//  ios101-lab6-flix
//
//  Created by Jon Toussaint on 3/20/24.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Configure the labels
        titleLabel.text = movie.title
        captionLabel.text = movie.overview

        if let voteAverage = movie.voteAverage {
            voteLabel.text = "Vote Average: \(voteAverage)"
        } else {
            voteLabel.text = ""
        }

        // The `releaseDate` is a `Date` type. We can convert it to a string using a `DateFormatter`.
        // Create a date formatter
        let dateFormatter = DateFormatter()

        // Set the date style for how the date formatter will display the date as a string.
        // You can experiment with other settings like, `.short`, `.long` and `.full`
        dateFormatter.dateStyle = .medium

        // Unwrap the optional release date
        if let releaseDate = movie.releaseDate {
            // Use the the date formatter's `string(from: Date)` method to convert the date to a string
            let releaseDateString = dateFormatter.string(from: releaseDate)
            releaseDateLabel.text = "Release Date: \(releaseDateString)"
        } else {
            releaseDateLabel.text = ""
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
