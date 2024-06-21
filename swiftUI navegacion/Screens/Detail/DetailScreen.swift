//
//  Detail.swift
//  swiftUI navegacion
//
//  Created by David Acevedo on 17/06/24.
//

import SwiftUI

struct DetailScreen: View {
    @StateObject private var viewModel = DetailViewModel()
    var body: some View {
        NavigationView {
            ZStack  {
                if let photosUris = viewModel.randomPhoto?.urls {
                    AsyncImage(url: URL(string: photosUris.full)) { imageResponse in
                        imageResponse.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                        
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
            
        }.onAppear() {
            Task {
                                await viewModel.getRandomPhoto()
            }
        }
    }
}

#Preview {
    DetailScreen()
}
