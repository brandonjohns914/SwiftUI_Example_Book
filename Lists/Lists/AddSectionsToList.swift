//
//  AddSectionsToList.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct AddSectionsToList: View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            Section(header: Text("Other tasks"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }
            
            Section(header: Text("Header")) {
                Text("Row")
            }
            .headerProminence(.increased)
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    AddSectionsToList()
}
