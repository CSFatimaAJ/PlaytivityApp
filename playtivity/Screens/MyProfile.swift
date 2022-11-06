//
//  MyProfile.swift
//  projectKids
//
//  Created by Fatima Aljaber on 02/11/2022.
//

import SwiftUI

struct MyProfile: View {
    
    var body: some View {
        var childInfo: [String: String] =  ["childName": "Ali","Age":"9","Gender": "Boy", "Hobbies": "Swim"]
        var childInfo2: [String: String] =  ["childName": "Amani","Age":"10","Gender": "Girl", "Hobbies": "Football"]
        
        let keys = childInfo.map{$0.key}
        let values = childInfo.map {$0.value}
        VStack{
            
            ZStack{
                HStack {
                    Button(action: {
                        
                    },label: {
                        Image(systemName:"arrow.left.circle.fill")
                            .foregroundColor(.white)
                        
                    })
                    Spacer()
                    VStack{
                        Text("My Profile")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Spacer()
                }

            }
            .padding()
            .background(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118))


                
            
            VStack(alignment: .center,spacing: 15){
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9607843137254902)).frame(height: 205)
                    VStack{
                        HStack{
                            Text("My Profile Information")
                                .font(.headline)
                                .foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                            Spacer()
                            Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 0.9490196078431372, green: 0.7725490196078432, blue: 0.30980392156862746, opacity: 1.0))
                            
                            
                        }.padding([.leading, .bottom, .trailing])
                        HStack(alignment: .top){
                            ZStack{
                                Circle().foregroundColor(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118)).frame(width: 80,height: 80)
                                Image("profilePhoto").resizable().frame(width: 74,height: 74).cornerRadius(50)
                            }.padding(.trailing)
                            
                            VStack(alignment: .leading,spacing: 7){
                                Text("Name:  Sara Ahmed")
                                Text("Phone: +966 503 534 495")
                                Text("Email: Saraahmed75@gmail.com")
                                Text("Password: *********")
                                Text("City: Riyadh")
                                
                            }.foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                                .font(.callout)
                        }
                    }
                    
                }
                
                
                
                Group{
                    ScrollView{
                        VStack{
                            ChildCell(name: childInfo["childName"]!, age: childInfo["Age"]!, gender: childInfo["Gender"]!, hobbies: childInfo["Hobbies"]!)
                            ChildCell(name: childInfo2["childName"]!, age: childInfo2["Age"]!, gender: childInfo2["Gender"]!, hobbies: childInfo2["Hobbies"]!)
                            
                            
                        }
                        
                    }
                }
                
                HStack{
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Add Child")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding()
                            .padding(.horizontal)
                            .foregroundColor(.white)
                        
                    })
                }
                
                .frame(width: 315,height:57)
                .background(Color(red: 0.1450980392156863, green: 0.6862745098039216, blue: 0.8470588235294118))
                .cornerRadius(12)
                .padding(.top)
                
                
            }.padding([.top, .leading, .trailing])
        }
    }
    
}
private struct ChildCell: View {
    
    var name: String
    var age: String
    var gender: String
    var hobbies: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15).foregroundColor(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9607843137254902)).frame(height: 180)
            VStack(alignment: .leading){
                HStack{
                    Text("My child Information")
                        .font(.headline)
                        .foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                    Spacer()
                    Image(systemName: "pencil.circle.fill").foregroundColor(Color(red: 0.9490196078431372, green: 0.7725490196078432, blue: 0.30980392156862746, opacity: 1.0))
                    
                    
                }.padding([.leading, .bottom, .trailing])
                
                VStack(alignment:.leading,spacing: 7){
                    Text("Name:  \(name)")
                    Text("Gender:  \(gender)")
                    Text("Age: \(age)")
                    Text("Hobbies: \(hobbies)")
                }.foregroundColor(Color(red: 0.07058823529411765, green: 0.20392156862745098, blue: 0.44313725490196076))
                    .font(.callout)
                    .padding(.leading)
            }
        }
    }
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
