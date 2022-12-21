//
//  ContentView.swift
//  Anonymous
//
//  Created by shoeb on 21/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = String()
    var body: some View {
        VStack{
            TextField("Username", text: $name)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.gray.opacity(0.15))
                .cornerRadius(10)
                //.textFieldStyle(.roundedBorder)
            Button(action: {
                debugPrint("Hello Wolrd")
            }, label: {
                Text("Press")
                    .frame(width: 80, height: 35)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }).disabled(name.count < 4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
