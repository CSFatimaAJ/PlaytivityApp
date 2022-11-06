//
//  Catagories.swift
//  Furniture_app
//
//  Created by Rahaf Aldosary on 08/04/1444 AH.
//

import SwiftUI
var tabs = [ "All","Creative" , "Cognitive" , "Physical"]

struct Catagories: View {
    @State var selectedtabb = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs,id:\.self) { tab in
                    CatagoryBtn(text: tab, selected: $selectedtabb, animation:animation)
                }
            }
            .padding(.vertical, 16)
        }
    }
}



struct CatagoryBtn: View {
    var text: String
    @Binding var selected: String
    var animation : Namespace.ID
    var body: some View {
        Button(action: {
            withAnimation(.spring(), {
                selected = text
            })
        } ) {
            Text(text)
                .frame(height:10)
                .fontWeight(.medium)
                .foregroundColor(selected == text ? .white: .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack{
                    if (selected == text) {
                        Color("Primary 2")
                            .fontWeight(.heavy)
                            .cornerRadius(20)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                    }
                })
                .shadow(color: Color.black.opacity(0.15), radius:8 , x: 4, y: 4)
            
        }
       
    }
}



struct Catagories_Previews: PreviewProvider {
    static var previews: some View {
        Catagories()
    }
}
