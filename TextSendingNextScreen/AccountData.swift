//
//  Untitled.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//
import UIKit
struct AccountData{
    var accountType: String?
    var accountNumber: String?
    var accountAmount: String?
    var accountImage: String?
    var accountColor: UIColor?
    
    static func getMockData() -> [AccountData] {
        let data1 = AccountData(accountType: "Checking", accountNumber: "123-456-789", accountAmount: "$20,891.50", accountImage: "centsign.bank.building", accountColor: .systemBlue)
        let data2 = AccountData(accountType: "Savings", accountNumber: "123-456-789", accountAmount: "$4,865.23", accountImage: "indianrupeesign.bank.building",accountColor: .systemGreen)
        let data3 = AccountData(accountType: "Credit Card", accountNumber: "858-547-489", accountAmount:"$502.77", accountImage: "creditcard.fill",accountColor: .systemRed)
        let obj = [data1,data2,data3]
        return obj
        
    }
}

