//
//  AccountView.swift
//  Appetizer
//
//  Created by Alex on 8/3/25.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthday = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email Name", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $birthday,
                               displayedComponents: .date)
                    Button {
                        print("Save")
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
            }
            .navigationTitle(Text("Account"))
        }
    }
}

#Preview {
    AccountView()
}
