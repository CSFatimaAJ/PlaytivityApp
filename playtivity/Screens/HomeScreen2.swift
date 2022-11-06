//
//  HomeScreen2.swift
//  Furniture_app
//
//  Created by Rahaf Aldosary on 08/04/1444 AH.
//

import SwiftUI

struct HomeScreen2: View {
    @State private var search: String = ""
    @State private var selectedTab: Tab = .house

    var body: some View {
       

        ZStack{

            Color("Primary 3")
                .ignoresSafeArea()
            VStack {
                
                HeaderView()
               // SearchAndScanView(search: $search)
                Catagories()
                SectionTitleView(title: "Recommended")

                ScrollView (.vertical, showsIndicators: false) {
                    

                    VStack (spacing: 16){
                    
                        NavigationLink(destination: DetailScreen()){
                            
                            RecommendedActivity(title: "Pottery", price: 150, image: "activity1",color:"Primary")
                        }
                        
                            RecommendedActivity(title: "Cooking", price: 100, image: "activity2", color: "Primary")
                        
                            RecommendedActivity(title: "Football", price: 70, image: "activity3", color: "Primary")
                            RecommendedActivity(title: "Puzzles", price: 20, image: "activity4", color: "Primary")
                            RecommendedActivity(title: "Painting", price: 60, image: "activity5", color: "Primary")
                            
                            
                    
                        

                    }
                    
                }
                
            }
            .padding()
            
//            ZStack{
//
//
//                VStack {
//                    Spacer()
//                    TabBar(selectedTab: $selectedTab)
//                        .padding()
//                }
//
//            }
            
        }
        
        
    }
    
    
}


struct HomeScreen2_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen2()
    }
}


struct RecommendedActivity: View {
    var title: String
    var price: Int
    var image: String
    var color : String
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack {
                Image(image)
              
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 300, height: 145)
           
                
                
            }
            VStack(alignment: .leading){

                Text(title)
                    .font(.title2)
                    .foregroundColor(Color("Primary 1"))
                
                HStack (alignment: .top) {
                    
                    
                    Image(systemName:"figure.stand")
                    
                    Text("6-8")
                        .font(.subheadline)
                        .opacity(0.6)
                    
                    
                    Image(systemName: "dollarsign")
                    Text("$\(price)")
                        .font(.subheadline)
                        .opacity(0.6)
                    
                    Image(systemName: "calendar")
                    Text("4-6 PM")
                        .font(.subheadline)
                        .opacity(0.6)
                }
            }
            .padding()
        }
       
        .background(Color(color).opacity(0.1))
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.02), radius: 16, x: 16, y: 16)
    }
    
    
}
