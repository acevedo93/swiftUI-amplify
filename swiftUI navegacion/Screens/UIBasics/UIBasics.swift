//
//  UIBasics.swift
//  swiftUI navegacion
//
//  Created by David Acevedo on 21/06/24.
//

import SwiftUI

struct UIBasics: View {
    var body: some View {
        HStack (alignment: .top) {
            //profile picture
            
           Image("Avatar")
                .resizable()
                .aspectRatio(contentMode:  .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
            
            //profile info
            VStack (alignment: .leading) {
                //name
                Text("David Acevedo")
                    .font(.custom("PlaywriteUSTrad-Regular", size: 20))
                //instagram
                Text("@jaranillo93")
                    .font(.custom("PlaywriteUSTrad-Light", size: 16))
                //description
                Text("Crea una vista de imagen utilizando una imagen llamada  que debe estar incluida en tus assets del proyecto Xcode.")
                HStack {
                    VStack {
                        Text("74.3M")
                        Text("Views")
                    }
                    VStack {
                        Text("17")
                        Text("Rank")
                    }
                    VStack {
                        Text("45M")
                        Text("Downloads")
                    }
                }
                HStack {
                    //button follow
                    Button("Follow") {
                        print("follow")
                    }
                    //button view profile
                    Button("View Profile") {
                        print("View profile")
                    }
                }
               
            }
        }
    }
}

#Preview {
    UIBasics()
}
