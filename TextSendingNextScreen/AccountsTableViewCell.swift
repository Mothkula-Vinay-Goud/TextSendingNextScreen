//
//  AccountsTableViewCell.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//

import UIKit

class AccountsTableViewCell: UITableViewCell {

    var accountTypeLabel: UILabel?
    var accountNumberLabel: UILabel?
    var accountAmountLabel: UILabel?
    var accountImage: UIImageView?
    
//    var selectedAccount: AccountData?
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        
        setUpUI()


            }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI() {
        
        accountTypeLabel = UILabel()
        accountTypeLabel?.textColor = .black
        accountTypeLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        accountNumberLabel = UILabel()
        accountNumberLabel?.textColor = .black
//        accountNumberLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        accountAmountLabel = UILabel()
        accountAmountLabel?.textColor = .black
        accountAmountLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        accountImage = UIImageView()
        
        
        
        accountAmountLabel?.textAlignment = .center
        accountTypeLabel?.translatesAutoresizingMaskIntoConstraints = false
        accountImage?.translatesAutoresizingMaskIntoConstraints = false
        accountNumberLabel?.translatesAutoresizingMaskIntoConstraints = false
        accountAmountLabel?.translatesAutoresizingMaskIntoConstraints = false
        
        
       if let accountTypeLabel = accountTypeLabel,let accountNumberLabel = accountNumberLabel, let accountImage = accountImage, let accountAmountLabel = accountAmountLabel {
           contentView.addSubview(accountTypeLabel)
           contentView.addSubview(accountNumberLabel)
           contentView.addSubview(accountAmountLabel)
           contentView.addSubview(accountImage)
           NSLayoutConstraint.activate([
            accountImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            accountImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            accountImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            accountImage.widthAnchor.constraint(equalToConstant: 70),
            accountImage.heightAnchor.constraint(equalToConstant: 70),
            
            accountTypeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            accountTypeLabel.leadingAnchor.constraint(equalTo: accountImage.trailingAnchor, constant: 10),
            accountTypeLabel.trailingAnchor.constraint(equalTo: accountAmountLabel.leadingAnchor, constant: -10),
            
            accountNumberLabel.topAnchor.constraint(equalTo: accountTypeLabel.bottomAnchor, constant: 10),
            accountNumberLabel.leadingAnchor.constraint(equalTo: accountImage.trailingAnchor, constant: 10),
            accountNumberLabel.trailingAnchor.constraint(equalTo: accountAmountLabel.leadingAnchor, constant: -10),
        
            
            accountAmountLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
//            accountAmountLabel.leadingAnchor.constraint(equalTo: accountTypeLabel.trailingAnchor, constant: 10),
            accountAmountLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
           ])
           
           
        }
    
    }
    
    func setData(_ selectedAccount: AccountData) {
    accountAmountLabel?.text = selectedAccount.accountAmount
    accountImage?.image = UIImage(systemName: selectedAccount.accountImage ?? "")
        accountImage?.tintColor = selectedAccount.accountColor
    accountTypeLabel?.text = selectedAccount.accountType
    accountNumberLabel?.text = selectedAccount.accountNumber
        
    }
}

    
    

