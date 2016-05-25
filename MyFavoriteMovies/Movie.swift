//
//  Movie.swift
//  MyFavoriteMovies
//
//  Created by Alper on 23/11/15.
//  Copyright (c) 2015 Alper. All rights reserved.
//

import UIKit

// MARK: - Movie

struct Movie {
    
    // MARK: Properties
    
    var title = ""
    var id = 0
    var posterPath: String? = nil
    var voteAverage : Double? = nil
    
    // MARK: Initializers
    
    init(dictionary: [String : AnyObject]) {
        title = dictionary["title"] as! String
        id = dictionary["id"] as! Int
        posterPath = dictionary["poster_path"] as? String
        voteAverage = dictionary["vote_average"] as? Double
    }
    
    static func moviesFromResults(results: [[String : AnyObject]]) -> [Movie] {
        
        var movies = [Movie]()
        
        //Iterate through array of dictionaries; each Movie is a dictionary 
        for result in results {
            movies.append(Movie(dictionary: result))
        }
        
        return movies
    }
    
}