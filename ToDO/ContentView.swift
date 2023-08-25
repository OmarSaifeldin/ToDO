//
//  ContentView.swift
//  ToDO
//
//  Created by Omar Saifeldin on 07/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [Todo(title: "Feed the cat", isCompleted: true), Todo(title: "Play with cat"), Todo(title: "Get allergies"),Todo(title: "Run away from cat"),Todo(title: "Get a new cat")]
    var body: some View {
        NavigationStack{
            List{
                ForEach($todos, editActions: [.all]) { $todo in
                    NavigationLink{
                        TodoDetailView(todo: $todo)
                    } label: {
                        HStack{
                            Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                            VStack{
                                Text(todo.title)
                                    .strikethrough(todo.isCompleted)
                                if !todo.subtitle.isEmpty { Text(todo.subtitle)
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                        .strikethrough(todo.isCompleted)
                                }
                            }
                        }
                    }
                }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { originalOffsets, newOffset in
                    todos.move(fromOffsets: originalOffsets, toOffset: newOffset)
                }
            }
        }
        .navigationTitle("Todos")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
        }
    }
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
        }

