//
//  DisasterItemsView.swift
//  DisasterGuidebook
//
//  Created by 水原　樹 on 2024/08/14.
//

import SwiftUI

struct DisasterItem: Identifiable {
    var id = UUID()
    var name: String
    var isPrepared: Bool
}

class DisasterItemsViewModel: ObservableObject {
    @Published var items: [DisasterItem] = []
    
    init() {
        // ここで初期データを設定
        items = [
            DisasterItem(name: "水", isPrepared: false),
            DisasterItem(name: "非常食", isPrepared: false),
            DisasterItem(name: "懐中電灯", isPrepared: false),
            DisasterItem(name: "救急セット", isPrepared: false)
        ]
    }
    
    func addItem(name: String) {
        let newItem = DisasterItem(name: name, isPrepared: true)
        items.append(newItem)
    }
    
    var unpreparedItems: [DisasterItem] {
        items.filter { !$0.isPrepared }
    }
    
    var preparedItems: [DisasterItem] {
        items.filter { $0.isPrepared }
    }
}


struct DisasterItemsView: View {
    @StateObject private var viewModel = DisasterItemsViewModel()
    @State private var newItemName: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            // 上部に「災害準備に準備した方がいいもの」を表示
            Section(header: Text("災害準備に準備した方がいいもの")
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.blue.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
            ) {
                List(viewModel.unpreparedItems) { item in
                    HStack {
                        Text(item.name)
                            .font(.body)
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 1)
                    .padding(.vertical, 4)
                }
                .listStyle(PlainListStyle())
            }
            
            // 下部に「今現在準備してあるもの」を表示
            Section(header: Text("今現在準備してあるもの")
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)
            ) {
                List(viewModel.preparedItems) { item in
                    HStack {
                        Text(item.name)
                            .font(.body)
                        Spacer()
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 1)
                    .padding(.vertical, 4)
                }
                .listStyle(PlainListStyle())
            }
            
            // 新しいアイテムを追加する入力フィールドとボタン
            HStack {
                TextField("アイテムを追加", text: $newItemName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading, 10)
                    .padding(.trailing, 5)
                
                Button(action: {
                    viewModel.addItem(name: newItemName)
                    newItemName = ""
                }) {
                    Text("追加")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .navigationTitle("防災グッズリスト")
        .background(Color(.systemGray6))
    }
}


#Preview {
    DisasterItemsView()
}
