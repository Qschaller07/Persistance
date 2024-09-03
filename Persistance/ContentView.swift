//
//  ContentView.swift
//  Persistance
//
//  Created by Quin Schaller on 8/27/24.
//

import SwiftUI
import SwiftData
import MapKit

struct ContentView: View {
    
    
    
    var body: some View {
        VStack{
            
            Text("To-do List and College Profiles")
                .font(.largeTitle)
            
            NavigationStack {
                ZStack{
                    
                    NavigationLink {
                        QuinCollegeView()
                    } label: {
                        Text("Quin")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 150, height: 100)
                            .font(.title)
                            .background(RoundedRectangle(cornerRadius: 25).fill(Color.cyan).shadow(radius: 3))
                        
                        
                    }
                    .font(.largeTitle)
                    
                }
                .padding()
                
                
                
            }
        }
    }
}
#Preview {
ContentView()
}
