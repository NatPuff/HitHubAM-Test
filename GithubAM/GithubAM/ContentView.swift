//
//  ContentView.swift
//  GithubAM
//
//  Created by AMStudent on 9/14/21.
//

import SwiftUI

struct ContentView: View {
    @State var puffshow = false
    @State var notpuffshow = false
    var body: some View {
        
        ZStack {
            Color(.green).ignoresSafeArea()
            VStack {
                Text("Me when, me when your, me when ")
                    Text("I hate not jigglypuff")
                   
                    .padding()
                Button("Jigglypuff"){
                    puffshow = true
                }
                .alert(isPresented: $puffshow){
                    .init(title: .init(( "You hit puff button")))
                }
                Button("NotPuff"){
                    notpuffshow = true
                }
                .padding()
                .alert(isPresented: $notpuffshow){
                    .init(title: .init(("You hit not puff botton. shame")))
                }
                Text("puff is supreme")

            }
        }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
   
