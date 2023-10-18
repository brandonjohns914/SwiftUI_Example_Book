//
//  HowtoPresentNewViewUsingSheets.swift
//  PresentingViews
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI


struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Press to dismiss"){
            dismiss()
        }
        .font(.title)
        .padding()
        .background(.black)
    }
}

struct HowtoPresentNewViewUsingSheets: View {
  @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}

#Preview {
    HowtoPresentNewViewUsingSheets()
}
