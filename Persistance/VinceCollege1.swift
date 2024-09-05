import SwiftUI
import MapKit

struct VinceCollege1: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 44.049659, longitude: -91.639472),
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
