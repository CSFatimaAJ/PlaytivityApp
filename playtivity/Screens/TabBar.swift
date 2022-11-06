//
//  TabBar.swift
//  Furniture_app
//
//  Created by Rahaf Aldosary on 07/04/1444 AH.
//

import SwiftUI

enum Tab: String , CaseIterable{
    case house
    case heart
    case person
    case activity = "figure.and.child.holdinghands"
    
}
struct TabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String{
        selectedTab.rawValue + ".fill"
    }
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.15)
                        .foregroundColor(selectedTab == tab ? Color("Primary") : .gray)
                        .font(.system(size:20))
                        .onTapGesture{
                            withAnimation(.easeIn(duration:0.1)){
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
                
            }
            .frame(width:nil, height:60)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.house))
    }
}
