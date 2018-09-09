//
//  File.swift
//  BigNerdRanchPhotorama
//
//  Created by 10.12 on 2018/9/9.
//  Copyright © 2018 Rui. All rights reserved.
//

import Foundation

class Photo: Equatable {
    
    let title: String
    let remoteURL: URL
    let photoID: String
    let dateTaken: Date
    
    init(title: String, photoID: String, remoteURL: URL, dateTaken: Date) {
        self.title = title
        self.photoID = photoID
        self.remoteURL = remoteURL
        self.dateTaken = dateTaken
    }
    
    static func == (lhs: Photo, rhs: Photo) -> Bool {
        // Two Photos are the same if they have the same photoID
        return lhs.photoID == rhs.photoID
    }
}
