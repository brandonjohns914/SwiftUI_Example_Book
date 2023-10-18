//
//  HowToMakeViewDismissItself.swift
//  PresentingViews
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct DismissingView1: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Dismiss Me") {
            dismiss()
        }
    }
}

struct DismissingView2: View {
    @Binding var isPresented: Bool

    var body: some View {
        Button("Dismiss Me") {
            isPresented = false
        }
    }
}

struct HowToMakeViewDismissItself: View {
    @State private var showingDetail = false

        var body: some View {
            Button("Show Detail") {
                showingDetail = true
            }
            .sheet(isPresented: $showingDetail) {
                DismissingView1()
            }
            Button("Show Detail") {
                showingDetail = true
            }
            .sheet(isPresented: $showingDetail) {
                DismissingView2(isPresented: $showingDetail)
            }
        }
}

#Preview {
    HowToMakeViewDismissItself()
}
