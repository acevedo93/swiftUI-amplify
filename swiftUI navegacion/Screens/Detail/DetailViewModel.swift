//
//  DetailViewModel.swift
//  swiftUI navegacion
//
//  Created by David Acevedo on 17/06/24.
//

import Foundation

struct PhotoRandom: Codable, Identifiable {
    let id: String
    let urls: LinkPhoto
}
struct LinkPhoto: Codable {
    let raw:  String
    let full: String
    let regular: String
    let small: String
    let thumb:  String
}


let apiKey = "g_2UEFi4glEQT450zkOyRTb0xbkdlbQKI2-9wQpL_qQ"

class DetailViewModel: ObservableObject {
    @Published var randomPhoto: PhotoRandom?
    @Published var isLoading: Bool = true
    @Published var errorMessage: String = ""
    
    func getRandomPhoto() async {
        guard let url = URL(string: "https://api.unsplash.com/photos/random?client_id=\(apiKey)") else {
            DispatchQueue.main.async {
                self.errorMessage = "Not available"
            }
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let photosResponse = try JSONDecoder().decode(PhotoRandom.self, from: data)
            DispatchQueue.main.async {
                self.randomPhoto = photosResponse
                print(photosResponse.urls.raw)
                self.isLoading = false
            }
            
        } catch  {
            DispatchQueue.main.async {
                print(error)
                self.isLoading = false
                self.errorMessage = "Error fetching"
            }
            
        }
    }
}
