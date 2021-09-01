//
//  ContentView.swift
//  h4ck3r_n3w5
//
//  Created by Piotr Ćwiertnia on 01/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("h4ck3r_n3w5")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hey"),
    Post(id: "3", title: "Hi")
]
