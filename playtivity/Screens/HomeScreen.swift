

import SwiftUI

struct HomeScreen: View {
    @State private var selectedTab: Tab = .house
    @State private var search: String = ""
    @State private var selectedIndex: Int = 1
    
    
    var body: some View {
        
        
        NavigationView {
            
            
            ZStack {
                
                ScrollView (showsIndicators: false) {
                    VStack (alignment: .leading,spacing: 5) {
                        
                        
                        HeaderView()
                            .padding()
                        SearchAndScanView(search: $search)
                        
                        Catagories().padding(.horizontal)
                    }
                    
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        
                        HStack(spacing:15){
                            
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity1", title: "Pottery", size: 240, price: 100, color: "Primary")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity2", title: "Cooking", size: 240, price: 80, color: "Primary 2")}
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity3", title: "Football", size: 240, price: 80, color: "Primary 4")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity4", title: "Puzzle", size: 240, price: 80, color: "Primary")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity5", title: "Painting", size: 240, price: 80, color: "Primary 2")
                            }
                        }
                        .foregroundColor(Color("Primary 1"))
                        
                        
                        .padding()
                    }
                    
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        
                        HStack(spacing:15){
                            NavigationLink(destination: DetailScreen()){
                                
                                
                                ProductCardView(image: "activity1", title: "Pottery", size: 240, price: 100, color: "Primary 4")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity2", title: "Cooking", size: 240, price: 80, color: "Primary")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity3", title: "Football", size: 240, price: 80, color: "Primary 2")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity4", title: "Puzzle", size: 240, price: 80, color: "Primary 4")
                            }
                            NavigationLink(destination: DetailScreen()){
                                
                                ProductCardView(image: "activity5", title: "Painting", size: 240, price: 80, color: "Primary" )
                            }
                        }
                        .foregroundColor(Color("Primary 1"))
                        
                        
                        
                        .padding()
                    }
                    
                    
                }
                
                
                
                //                VStack {
                //                    Spacer()
                //
                //                    TabBar(selectedTab: $selectedTab)
                //                    if selectedTab == .person{
                //                        ProfileView()
                //                    }
                //                }
                
            }
            
        }
        
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}





struct TagLineView: View {
    var body: some View {
        Text("Find the Best Activities For ")
            .font(.custom("PlayfairDisplay-Regular", size: 28))
            .foregroundColor(Color("Primary 1"))
        + Text("your Kids!")
            .font(.custom("PlayfairDisplay-Bold", size: 28))
            .fontWeight(.bold)
            .foregroundColor(Color("Primary 1"))
    }
}

struct SearchAndScanView: View {
    @Binding var search: String
    var body: some View {
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search", text: $search)
            }
            .foregroundColor(.gray)
            .padding(.all, 10)
            .background(Color("Primary 3"))
            .cornerRadius(10.0)
            .padding(.trailing, 8)
            
            
        }
        .padding(.horizontal)
    }
}

struct CategoryView: View {
    let isActive: Bool
    let text: String
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? Color("Primary") : Color.black.opacity(0.5))
            if (isActive) { Color("Primary")
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

struct ProductCardView: View {
    let image: String
    let title: String
    let size: CGFloat
    let price: Int
    let color: String
    var body: some View {
        VStack {
            
            Image(image)
            
                .resizable()
                .frame(width: size, height: 210 * (size/210))
                .cornerRadius(20.0)
            Text(title).font(.title3).fontWeight(.bold)
            
            
            Spacer()
            
            
            HStack (alignment: .top,spacing: 25) {
                
                HStack{
                    Image(systemName:"figure.stand")
                    Text("6-8")
                        .opacity(0.6)
                }
                HStack{
                    Image(systemName: "dollarsign")
                    Text("\(price)")
                        .opacity(0.6)
                }
                HStack{
                    
                    Image(systemName: "calendar")
                    Text("4-6 PM")
                        .opacity(0.6)
                }
            }
        
        }
        
        .frame(width: size)
        .padding()
        .background(Color(color).opacity(0.1))
        .cornerRadius(20.0)
        
    }
}



/*struct BottomNavBarView: View {
 let isActive: Bool
 
 var body: some View {
 HStack {
 BottomNavBarItem(image: Image(systemName: "figure.tennis"), action: {})
 
 BottomNavBarItem(image: Image(systemName:"heart.fill"), action: {})
 BottomNavBarItem(image: Image(systemName:"person.fill"), action: {})
 .foregroundColor(isActive ? Color("Primary") : Color("Primary"))
 if (isActive) { Color("Primary")
 .frame(width: 15, height: 2)
 .clipShape(Capsule())
 }
 }
 .padding()
 .background(Color.white)
 .clipShape(Capsule())
 .padding(.horizontal)
 .shadow(color: Color.gray.opacity(0.15), radius: 8, x: 2, y: 6)
 }
 }
 
 struct BottomNavBarItem: View {
 let image: Image
 let action: () -> Void
 var body: some View {
 Button(action: action) {
 image
 .frame(maxWidth: .infinity)
 }
 }
 }
 */
