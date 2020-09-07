//
//  Movie.swift
//  MovieMusicAppTabBar
//
//  Created by Kisacka on 07/09/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import Foundation

struct Movie {
    
    let title: String
    let year: String
    let poster: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let movieTitle = DataManager.shared.movie
        let movieYear = DataManager.shared.year
        let moviePoster = DataManager.shared.poster
        
        for index in 0..<movieTitle.count{
            let movie = Movie(title: movieTitle[index], year: movieYear[index], poster: moviePoster[index])
            movies.append(movie)
        }
        
        
        return movies
        
    }
}

