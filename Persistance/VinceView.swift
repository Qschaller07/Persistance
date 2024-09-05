import SwiftUI
import SwiftData

struct VinceView: View {
    @Environment(\.modelContext) var context
    @Query var todolist: [Todolist]
    @Query var collegeList: [College] // Query for the college list
    @State private var enteredName = ""
    @State private var enteredCollegeName = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                TextField("Enter item", text: $enteredName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add to List") {
                    let newItem = Todolist(name: enteredName)
                    context.insert(newItem)
                    try? context.save()
                    enteredName = ""
                }
                .padding()
                
                List(todolist) { item in
                    Text(item.name)
                }
                
                Divider()
                
            
                TextField("Enter college name", text: $enteredCollegeName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add College") {
                    let newCollege = Colleges1(name: enteredCollegeName)
                    context.insert(newCollege)
                    try? context.save()
                    enteredCollegeName = ""
                }
                .padding()
                
                List(collegeList) { colleges1 in
                    Text(colleges1.name)
                }
                
                NavigationLink(destination: CollegeView()) {
                    Text("Go To Colleges")
                }
                
            }
            .padding()
        }
        
    }
}


@Model
class Todolist: Identifiable {
    var id: UUID
    var name: String
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}


@Model
class Colleges1: Identifiable {
    var id: UUID
    var name: String
    
    init(name: String) {
        self.id = UUID()
        self.name = name
    }
}
