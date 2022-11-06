

import SwiftUI

struct DetailScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            ScrollView  {
                    Image("activity1")
                    .resizable()
                    .scaledToFit()
                DescriptionView()
                
            }
            .edgesIgnoringSafeArea(.top)
            
            HStack{
                
                Button(action: {}, label: {
                    Text("Book Now")
                        .padding()
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    
                })
            }
            .padding(.horizontal)
            .background(Color("Primary"))
            .cornerRadius(15)
            .frame(height:700, alignment: .bottom)
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton(action: {presentationMode.wrappedValue.dismiss()}), trailing: Image(""))
    }
}


struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
        

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}


struct ColorDotView: View {
    let color: Color
    var body: some View {
        color
            .frame(width: 24, height: 24)
            .clipShape(Circle())
    }
}

struct DescriptionView: View {
    var body: some View {
        VStack (alignment: .leading) {
            //                Title
            Text("Pottery")
                .font(.title)
                .fontWeight(.bold)
            //                Rating
            HStack (spacing: 4) {
                ForEach(0 ..< 5) { item in
                    Image("star")
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            
            
            Text("Description")
                .font(.title)
                .fontWeight(.medium)
                .padding(.vertical, 8)
            Spacer()
                .padding()
            Text("Pottery Making enhances creativity, spatial intelligence and fine-motor skills development among children.It allows children to explore clay as a material.Children of all ages enjoy pinching, rolling, poking, stretching and pounding the clay.")
                .lineSpacing(3.0)
                .opacity(0.7)
            
            //                Info
            HStack (alignment: .top) {
                
                   
                    Image(systemName: "figure.stand")
                    Text("6-8 years old")
                        .font(.subheadline)
                        .opacity(0.6)
                    
                    Image(systemName: "dollarsign")
                    Text("150SR")
                        .font(.subheadline)
                        .opacity(0.6)
                
                    Image(systemName: "calendar")
                    Text("4:00-6:00pm")
                        .font(.subheadline)
                        .opacity(0.6)
                        
                
              
            }
            .padding(.vertical)
            
            //                Colors and Counter
      
        }
        .padding()
        .padding(.top)
        .background(Color.white)
        .cornerRadius(30, corners: [.topLeft, .topRight])
        .offset(x: 0, y: -30.0)
    }
}


struct BackButton: View {
    let action: () -> Void
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.backward")
                .foregroundColor(.black)
                .padding(.all, 12)
                .background(Color.white)
                .cornerRadius(8.0)
        }
    }
}
