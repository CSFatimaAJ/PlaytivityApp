//
//  ContentView.swift
//  projectKids
//
//  Created by Fatima Aljaber on 31/10/2022.
//
import SwiftUI

struct ProfileView: View {
    @State private var selectedTab: Tab = .person

    var titles1 = ["My Profile","My Kids Activities","Language"]
    var titles2 = ["Invite Friends","Customers Service","About our app","Terms & Conditions","Logout"]
    var icons1 = ["person.crop.circle.fill","figure.and.child.holdinghands","globe"]
    var icons2 = ["shared.with.you","bubble.left.and.bubble.right","star.circle","doc.text","chevron.right.square"]
    
    var body: some View {
        
        VStack{
            NavigationView {
                ScrollView{
                    VStack(alignment: .center, spacing: -25){
                        ForEach(Array(zip(titles1, icons1)), id: \.0) { title in
                            ButtonCell(title: "\(title.0)", icon: "\(title.1)",showView: false)
                            
                        }
                    }
      
                    VStack(alignment: .center, spacing: -25){
                        ForEach(Array(zip(titles2, icons2)), id: \.0) { title in
                            ButtonCell(title: "\(title.0)", icon: "\(title.1),",showView: false)
                        }
                        
                    }
//                    VStack {
//                        Spacer()
//
//                        TabBar(selectedTab: $selectedTab)
//
//
//                    }

                    
                }
                .padding(.top, 250)
                .overlay {
                    
                    VStack(spacing:5){
                        ZStack {
                            
                            VStack(alignment: .center,spacing: -50){
                                Rectangle().foregroundColor(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118)).frame(height: 140)
                                
                                ZStack{
                                    Circle().foregroundColor(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118)).frame(width: 90,height: 90)
                                    Image("profilePhoto").resizable().frame(width: 86,height: 86).cornerRadius(50)
                                }
                                
                            }
                        }
                        Text("Sara Ahmed").font(.title2).foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076)).bold(true)
                        HStack{
                            Image(systemName: "phone.fill").foregroundColor(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118))
                            Text("+966 503 534 495").font(.subheadline)
                        }
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }.edgesIgnoringSafeArea(.all)
                    .ignoresSafeArea(.all)
                
                
            }
        }
    }
    
    
}

private struct ButtonCell: View {

    var title: String
    var icon: String
    var arrow: String = "arrowtriangle.forward.fill"
    @State var showView:Bool
    
    var body: some View {
        
        
        ZStack(alignment: .leading){
    
            Rectangle().padding(.horizontal,10).foregroundColor(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9607843137254902)).frame(height: 41)
            HStack{
                if title.contains("Profile"){
                    NavigationLink(destination: MyProfile().navigationBarBackButtonHidden(true)) {
                        
                        Image(systemName: self.icon)
                            .foregroundColor(Color(red: 0.145, green: 0.684, blue: 0.848))
                        Text(self.title).font(.headline).foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                        Spacer()
                        Image(systemName: "arrowtriangle.forward.fill")
                            .foregroundColor(Color(red: 0.07, green: 0.203, blue: 0.443))
                            .padding(30)
                        
                    }
                }
                else{
                    Image(systemName: self.icon)
                        .foregroundColor(Color(red: 0.145, green: 0.684, blue: 0.848))
                    Text(self.title).font(.headline).foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                    Spacer()
                    Image(systemName: "arrowtriangle.forward.fill")
                        .foregroundColor(Color(red: 0.07, green: 0.203, blue: 0.443))
                        .padding(30)
                }
                }.padding(.leading, 30)

            }
  
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileView()}
    }
}
