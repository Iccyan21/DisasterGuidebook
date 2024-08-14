//
//  FamilyEvacuationPlanView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/13.
//

import SwiftUI

struct FamilyEvacuationPlanView: View {
    @State private var meetingPlace: String = ""
    @State private var contactMethod: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("家族の避難計画")
                .font(.largeTitle)
                .bold()
            
            
            
            Text("家族との避難場所や連絡方法、集合場所を登録しましょう。")
                .font(.body)
                .foregroundColor(.gray)
            
            // 集合場所の登録
            VStack(alignment: .leading, spacing: 10) {
                Text("集合場所")
                    .font(.headline)
                
                TextField("集合場所を入力", text: $meetingPlace)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 5)
            }
            
            // 連絡方法の登録
            VStack(alignment: .leading, spacing: 10) {
                Text("連絡方法")
                    .font(.headline)
                
                TextField("連絡方法を入力", text: $contactMethod)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 5)
            }
            
            Spacer()
            
            // 登録ボタン
            Button(action: {
                // 登録処理をここに追加
                print("集合場所: \(meetingPlace), 連絡方法: \(contactMethod)")
            }) {
                Text("登録")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
        .navigationTitle("避難計画の登録")
    }
}

#Preview {
    FamilyEvacuationPlanView()
}

