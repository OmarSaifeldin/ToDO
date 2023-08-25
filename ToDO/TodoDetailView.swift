//
//  SwiftUIView.swift
//  ToDO
//
//  Created by Omar Saifeldin on 26/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        Form {
            TextField("Title", text: $todo.title)
            TextField("Subtitle", text: $todo.subtitle)
                .foregroundColor(.gray)
            Toggle("Completed?", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo Detail")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Feed the catto")))
    }
}
