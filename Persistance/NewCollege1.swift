import SwiftUI
import MapKit
import SwiftData

struct NewCollege1: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: -91.639472),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Winona State University")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Link("Visit Winona", destination: URL(string: "https://www.winona.edu/")!)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
                
                Map(coordinateRegion: $region, interactionModes: .all)
                    .frame(height: 300)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                
                Spacer()
            }
            .padding()
        }
    }
}

//@Model
//class College {
//    var id: UUID
//    var name: String
//    var website: String
//    var latitude: String
//    var longitude: String
//
//    init(name: String, website: String, latitude: String, longitude: String) {
//        self.id = UUID()
//        self.name = name
//        self.website = website
//        self.latitude = latitude
//        self.longitude = longitude
//    }
//}
//
