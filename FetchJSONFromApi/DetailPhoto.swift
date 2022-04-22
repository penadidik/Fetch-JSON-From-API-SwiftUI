//
//  DetailPhoto.swift
//  FetchJSONFromApi
//
//  Created by Didik Maryono on 23/04/22.
//

import SwiftUI

struct DetailPhoto: View {
    
    let photo: PhotoModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                Text(photo.title)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
            }
            
            AsyncImage(url: URL(string: photo.url)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            
            Spacer()
            
        }
        .padding()
        .navigationBarTitle(Text(photo.title), displayMode: .inline)
    }
}
