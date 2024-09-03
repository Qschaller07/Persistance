//
//  QuinCollegeView.swift
//  Persistance
//
//  Created by Quin Schaller on 8/29/24.
//

import SwiftUI
import SwiftData

struct QuinCollegeView: View {
    var body: some View {
        VStack{
            
            
            NavigationStack{
                
                ZStack{
                    
                    NavigationLink {
                        
                        QuinToDoListView()
                        
                    } label: {
                        Text("To-do List")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 150, height: 100)
                            .font(.title)
                            .background(RoundedRectangle(cornerRadius: 25).fill(Color.cyan).shadow(radius: 3))
                        
                    }
                    
                    
                    NavigationLink {
                        
                        QuinCollegeProfileView()
                        
                    } label: {
                        Text("College Profile")
                            .bold()
                            .foregroundStyle(.white)
                            .frame(width: 150, height: 100)
                            .font(.title)
                            .background(RoundedRectangle(cornerRadius: 25).fill(Color.cyan).shadow(radius: 3))
                    }
                }
            }
        }
    }
}
#Preview {
        QuinCollegeView()
    }

