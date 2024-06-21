//
//  UserChipComponent.swift
//  swiftUI navegacion
//
//  Created by David Acevedo on 19/06/24.
//

import Foundation
import SwiftUI

struct UserChipComponent: View {
    let user: String
    let age: String
    let rol: String
    var body: some View {
        HStack (alignment: .center) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                HStack(alignment: .center, spacing: 14) {
                    Text(user)
                    Circle()
                        .frame(width: 10, height: 10)
                    Text("\(age) años")
                    Circle()
                        .frame(width: 10, height: 10)
                    Text(rol)
                        .lineLimit(2)
                }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.gray, lineWidth: 1)
                .shadow(radius: 30)
        )
        
    }
}
