//
//  ContentView.swift
//  ListItemMoveSwiftUI
//
//  Created by shiga on 19/11/19.
//  Copyright © 2019 Shigas. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var itemLists = ["item1", "item2", "item3", "item4","item5","item6"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(itemLists, id: \.self) { item in
                    Text(item)
                }.onMove { (indexSet, index) in
                    self.itemLists.move(fromOffsets: indexSet, toOffset: index)
                }
                
            }
        .navigationBarTitle(Text("LISTITEM"))
            .navigationBarItems(trailing:EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
