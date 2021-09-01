//
//  DetailView.swift
//  h4ck3r_n3w5
//
//  Created by Piotr Ćwiertnia on 01/09/2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "http://www.google.com")
    }
}





