//
//  FetchPhoto.swift
//  FetchJSONFromApi
//
//  Created by Didik Maryono on 23/04/22.
//

import Foundation

class FetchPhoto: ObservableObject {
    
    @Published var photos = [PhotoModel]()
    
    init() {
        let url = URL(string: "https://jsonplaceholder.typicode.com/photos")!
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            
            do {
                if let photoData = data {
                    let decodedData = try JSONDecoder().decode([PhotoModel].self, from: photoData)
                    DispatchQueue.main.async {
                        self.photos = decodedData
                    }
                } else {
                    print("No data")
                }
            } catch {
                print("Error")
            }
        }.resume()
    }
    
}
