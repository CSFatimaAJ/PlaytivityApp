//
//  SectionTitleView.swift
//  Furniture_app
//
//  Created by Rahaf Aldosary on 08/04/1444 AH.
//

import SwiftUI


struct SectionTitleView: View {
    var title: String
    var body: some View {
        HStack{
            Text(title)
                .font(.system(size:18))
                .fontWeight(.medium)
                .foregroundColor(Color("Primary 1"))
            Spacer()
            Text("See All")
                .fontWeight(.medium)
                .foregroundColor(.blue.opacity(0.7))
            
            
        }
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(title: "Recommended")
    }

}
