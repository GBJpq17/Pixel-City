//
//  Constants.swift
//  Pixel City
//
//  Created by RyLo on 9/2/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import Foundation

let API_KEY = "a693835a38e58e6afdbcdc9e099384af"

func FLICKR_URL(forAPIKey key: String, withAnnonation annotation: DroppablePin, numberOfPhotos number: Int ) -> String {
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}
