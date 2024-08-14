//
//  EmergencyContact.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/14.
//

import SwiftUI

struct EmergencyContact: Identifiable {
    let id = UUID()
    let name: String
    let phoneNumber: String
}

struct EmergencyContactsView: View {
    @State private var contacts: [EmergencyContact] = [
        EmergencyContact(name: "消防署", phoneNumber: "119"),
        EmergencyContact(name: "警察署", phoneNumber: "110"),
        EmergencyContact(name: "家族", phoneNumber: "090-1234-5678")
    ]
    @State private var newContactName: String = ""
    @State private var newContactPhoneNumber: String = ""
    let title: String
    
    var body: some View {
        VStack {
            List(contacts) { contact in
                HStack {
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.headline)
                        Text(contact.phoneNumber)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(.vertical, 5)
            }
            
            Divider()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("緊急連絡先を追加")
                    .font(.headline)
                
                TextField("名前", text: $newContactName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("電話番号", text: $newContactPhoneNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.phonePad)
                
                Button(action: {
                    let newContact = EmergencyContact(name: newContactName, phoneNumber: newContactPhoneNumber)
                    contacts.append(newContact)
                    newContactName = ""
                    newContactPhoneNumber = ""
                }) {
                    Text("追加")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationTitle(title)
    }
}

#Preview {
    EmergencyContactsView(title: "緊急連絡先")
}

