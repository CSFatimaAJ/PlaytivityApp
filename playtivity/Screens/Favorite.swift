//
//  Favorite.swift
//  Furniture_app
//
//  Created by Fatima Aljaber on 05/11/2022.
//

import SwiftUI

struct Favorite: View {
    var ActivityImg = ["activity4","activity5"]

    var body: some View {
        VStack{
            
            HStack {
                
                Spacer()
                VStack(spacing: 4) {
                    Text("My Favorite")
                        .foregroundColor(.white)
                        .font(.title).bold()
                }
                Spacer()
            }
            .padding()
            .background(Color("Primary")
            )
            ScrollView{
                
                VStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9607843137254902)).frame(height: 135)
                        HStack(spacing:10){
                            Image(ActivityImg[0])
                                .resizable()
                                .frame(width: 125, height: 116)
                                .cornerRadius(25)
                            VStack(alignment:.leading,spacing: 10){
                                HStack{
                                    Text("Puzzle")
                                        .font(.title3)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Primary 2"))
                                   
                                }.padding(.trailing)
                                VStack(alignment:.leading, spacing:5){
                                HStack{
                                        Image(systemName: "dollarsign.circle.fill")
                                        Text("150SR/1 hour").font(.system(size: 13,weight: .regular))
                                    }
                                    HStack{
                                            Image(systemName: "figure.stand")
                                            Text("6-8 years old").font(.system(size: 13,weight: .regular))
                                        }
                                    HStack{
                                            Image(systemName: "calendar.badge.clock")
                                        Text("4:00-6:00 pm")                         .font(.system(size: 12,weight: .regular))

                                        }
                                
                                }.foregroundColor(Color("Primary 1"))
                                    .padding(.leading, 4.0)
                            }
                            Spacer()
                            VStack(alignment: .trailing,spacing: 45){
                                Image(systemName: "heart.circle.fill").resizable().frame(width: 34, height: 34).foregroundColor(Color("Primary"))
                                HStack(alignment:.bottom){
                                    Image(systemName: "star.fill").resizable().frame(width: 21, height: 21).foregroundColor(Color("Primary 4"))
                                    Text("4.5").font(.system(size: 13,weight: .bold))
                                }
                            }.padding()
                        }
                        
                        
                    }
                    
                    
                    
                }
                
            }
        
        
        .padding()
    }
}
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
