//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by Anna Taylor on 1/29/21.
//

import SwiftUI
import Firebase

@main
struct MusicAppApp: App {
    let data = OurData()
    
    init() {
        FirebaseApp.configure()
        data.loadAlbums()
    }
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}
