//
//  QuinCollegeView.swift
//  Persistance
//
//  Created by Quin Schaller on 8/29/24.
//

import SwiftUI
import SwiftData

struct QuinView: View {
    var body: some View {
        VStack{
            Text("Quin's To-do List and College Profile")
                .font(.largeTitle)
            
            NavigationStack{
                
                ZStack{
                    
                    NavigationLink("To-do List") {
                        QuinToDoListView()
                    }
                }
                .padding()
                
                
                NavigationLink("College Profile") {
                    QuinCollegeProfileView()
                }
                
            }
        }
    }
}

#Preview {
    QuinView()
}
