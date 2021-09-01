//
//  ContentView.swift
//  h4ck3r_n3w5
//
//  Created by Piotr Ćwiertnia on 01/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("h4ck3r_n3w5")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hey"),
//    Post(id: "3", title: "Hi")
//]
