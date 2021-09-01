//
//  PostData.swift
//  h4ck3r_n3w5
//
//  Created by Piotr Ćwiertnia on 01/09/2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
