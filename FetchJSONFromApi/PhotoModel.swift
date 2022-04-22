//
//  PhotoModel.swift
//  FetchJSONFromApi
//
//  Created by Didik Maryono on 23/04/22.
//

import Foundation

struct PhotoModel: Codable, Identifiable {
    public var albumId: Int
    public var id: Int
    public var title: String
    public var url: String
    public var thumbnailUrl: String
}
