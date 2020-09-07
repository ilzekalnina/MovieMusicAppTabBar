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

struct MusicTrack {
    
    let artist: String
    let album: String
    let albumCover: String
    
    //static means that can't override this function
    static func createMusicTrack() -> [MusicTrack]{
        var musicTracks: [MusicTrack] = []
        
        let artist = DataManager.shared.artist
        let album = DataManager.shared.album
        let albumCover = DataManager.shared.albumCover
        
        for index in 0..<artist.count {
            let track = MusicTrack(artist: artist[index], album: album[index], albumCover: albumCover[index])
            musicTracks.append(track)
        }
        
        return musicTracks
    }
    
}

