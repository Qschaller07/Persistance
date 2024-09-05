import SwiftUI
import MapKit

struct VinceCollege2: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.815580, longitude: -91.231190),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("UW - LaCrosse")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Link("Visit LaCrosse", destination: URL(string: "https://www.uwlax.edu/")!)
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
