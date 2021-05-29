//
//  CheckoutView.swift
//  iDine
//
//  Created by Dyllon on 30/5/21.
//

import SwiftUI

struct CheckoutView: View {
    // global
    @EnvironmentObject var order: Order
    
    // local
    @State private var paymentType = "Cash"
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
