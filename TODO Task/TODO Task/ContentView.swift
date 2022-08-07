//
//  ContentView.swift
//  TODO Task
//
//  Created by mohamed  habib on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    
   @State var tasks = [ Task]()
    
    private func addTask(){
        self.tasks.append(Task(name: "Wash car"))
        
    }
    var body: some View {
        List{
            
            Button(action: {
                addTask()
            }) {
                    Text("Add task")
            }

            ForEach(tasks){ task in
                
                Text(task.name)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
