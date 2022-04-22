//
//  ContentView.swift
//  FetchJSONFromApi
//
//  Created by Didik Maryono on 23/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var fetch = FetchPhoto()
    @State var image: UIImage = UIImage()
    var body: some View {
        NavigationView {
            List(fetch.photos) { photo in
                
                NavigationLink(destination: DetailPhoto(photo: photo)){
                    VStack(alignment: .leading) {
                        HStack {
                            AsyncImage(url: URL(string: photo.thumbnailUrl)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }.frame(width: 50, height: 50)
                            
                            Text(photo.title)
                                .font(.footnote)
                            
                        }.padding(7)
                    }
                }
                
            }.navigationBarTitle("Photo Album")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
