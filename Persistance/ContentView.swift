//
//  ContentView.swift
//  Persistance
//
//  Created by Quin Schaller on 8/27/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @Query var Colleges: [College]
    @State var collegeName = ""
    
    var body: some View {
        VStack{
            
            TextField("Enter Name", text: $collegeName)
                .textFieldStyle(.roundedBorder)
            Button("+") {
                let college = College(name: collegeName)
                context.insert(college)
                collegeName = ""
            }
            .font(.largeTitle)
            
        }
        .padding()
        
        
        List{
                    ForEach(Colleges) { currentCollege in
                        Text(currentCollege.name)
                    }
                }
    }
}


@Model
class College {
    var name: String
    
    init(name:String) {
        self.name = name
    }
}
