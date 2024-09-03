//
//  QuinCollegeProfileView.swift
//  Persistance
//
//  Created by Quin Schaller on 8/29/24.
//

import SwiftUI
import SwiftData

struct QuinCollegeProfileView: View {
    
    @Environment(\.modelContext) var context
    @Query var Colleges: [College]
    @State var collegeName = ""
    
    var body: some View {
        VStack{
            
            Text("College Profile")
                .font(.largeTitle)
            
            ZStack{
                TextField("Enter College", text:$collegeName)
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
}

@Model
class College {
    var name: String
    
    init(name:String) {
        self.name = name
    }
}



#Preview {
    QuinCollegeProfileView()
}
