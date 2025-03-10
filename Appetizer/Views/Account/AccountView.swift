//
//  AccountView.swift
//  Appetizer
//
//  Created by Alex on 8/3/25.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var vm = AccountVM()

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $vm.firstName)
                    TextField("Last Name", text: $vm.lastName)
                    TextField("Email Name", text: $vm.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $vm.birthday,
                               displayedComponents: .date)
                    Button {
                        vm.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                    
                }
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $vm.extraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
            }
            .navigationTitle(Text("Account"))
        }
        .alert(item: $vm.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
