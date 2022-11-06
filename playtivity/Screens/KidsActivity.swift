//
//  ContentView.swift
//  kidsActivity
//
//  Created by sumayah on 07/04/1444 AH.
//

//
//  ContentView.swift
//  project
//
//  Created by sumayah on 01/04/1444 AH.
//

import SwiftUI

struct KidsActivity: View {
    var ActivityName = ["Puzzles","Painting"]
    var ActivityImg = ["activity4","activity5"]
    var ActivityInfo =  [["Puzzles","Child Name: Ahmed Ali","Price: 150 SAR","Age: 12-15","Time: 4:00 - 6:00 p.m","Paid: Criedt card"],["Painting","Child Name: Amani Ali","Price: 120 SAR","Age: 9-10","Time: 6:00 - 7:00 p.m","Paid: Criedt card"]]

    var body: some View {
        VStack{
            
            HStack {
//                Button(action: {
//
//                },label: {
//                    Image(systemName:"chevron.left.circle.fill")
//                        .foregroundColor(.white)
//
//                })
                Spacer()
                VStack(spacing: 4) {
                    Text("My Kids Activity")
                        .foregroundColor(.white)
                        .font(.title).bold()
                }
                Spacer()
            }
            .padding()
            .background(
                Color.yellow.ignoresSafeArea(edges: .top)
                
            )
            ScrollView{
                
                VStack{
                    
                    ForEach(Array(zip(ActivityName,ActivityImg)),id:\.0) { activity in
                        
                        ZStack(alignment:.leading){
                            RoundedRectangle(cornerRadius: 4)
                                .fill(
                                    Color(.gray)
                                        .opacity(0.07)
                                )
                                .frame(width: 360, height: 151)
                            VStack(spacing: 2){
                                HStack{
                                    Text(activity.0).fontWeight(.bold)      .foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                                    Spacer()
                                    Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 0.9490196078431372, green: 0.7725490196078432, blue: 0.30980392156862746, opacity: 1.0))
                                    
                                    
                                }.padding([.leading, .bottom, .trailing])
                                
                                HStack{
                                    Image(activity.1)
                                        .resizable()
                                        .frame(width: 90, height: 90)
                                        .cornerRadius(25)

                                        VStack(alignment: .leading,spacing: 4){
                                            Text("Amani Ali")
                                            Text("Age : 6-9 ")
                                            Text("Time: 4:00 - 6:00 p.m")
                                            Text("Paid : Credit Card")
                                            
                                        }.padding(.leading, 8.0)
                                            .font(.system(size: 16,weight: .regular))
                                    
                                }.padding(.leading, -50.0)
                            }
                            
                        }
                        
                        
                        
                    }
                    
                }
            }
            
            .padding()
        }
    }
    
}



struct KidsActivity_Previews: PreviewProvider {
    static var previews: some View {
            KidsActivity()
          //  Spacer()
        
    }
}


