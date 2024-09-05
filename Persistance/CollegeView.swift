import SwiftUI
import SwiftData


struct CollegeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: VinceCollege1()) {
                        Text("1st College")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 300)
                            .background(.red)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: VinceCollege2()) {
                        Text("2nd College")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 300)
                            .background(.red)
                            .cornerRadius(15)
                    }
                }
                HStack {
                    NavigationLink(destination: NewCollege1()) {
                        Text("3rd College")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 300)
                            .background(.red)
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: NewCollege2()) {
                        Text("4th College")
                            .foregroundColor(.black)
                            .frame(width: 200, height: 300)
                            .background(.red)
                            .cornerRadius(15)
                    }
                }
                
                
                
                
                
            }
        }
    }
}


class Colleges {
    var id: UUID
    var website: String
    var latitude: Int
    var longitude: Int
    
    init(website: String, latitude: Int, longitude: Int) {
        self.id = UUID()
        self.website = website
        self.latitude = latitude
        self.longitude = longitude
    }
}

#Preview {
    CollegeView()
}
