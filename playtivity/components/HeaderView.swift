//
//  Header.swift
//  Furniture_app
//
//  Created by Rahaf Aldosary on 08/04/1444 AH.
//

import SwiftUI


struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Find The Best Activites")
                    .font(.custom("PlayfairDisplay-Regular", size: 28))
                    .font(.title)

                    .fontWeight(.semibold)
                Text("for your kids")
                    .font(.custom("PlayfairDisplay-Regular", size: 28))

                    .font(.title)
            }
            .foregroundColor(Color("Primary 1"))
            Spacer()
            Image("Logo")
                .resizable()
                .frame(width: 150, height: 150)
        }
    }
}
