//
//  ContentView.swift
//  List_Swiftui
//
//  Created by tanaka niko on 2025/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                ForEach(Animal.allCases,id:\.self){ animal in
                    
                    NavigationLink(destination:DetailView(animal:animal)){
                        
                        HStack {
                            Image(animal.iconName)
                            Text(animal.name)
                        }
                        
                    }
                    
                    
                }
            }
            .navigationTitle("動物")
        }
        
    }
}

//SwiftUIではListにpaddingを加えるとListが灰色に浮き出る

#Preview {
    ContentView()
}
