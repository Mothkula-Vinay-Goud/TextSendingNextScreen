//
//  UpgradeTableViewCell.swift
//  TextSendingNextScreen
//
//  Created by Vinay Goud Mothkula on 1/30/26.
//

import UIKit

class UpgradeTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel?
    var subtitleLabel: UILabel?
    var customImage: UIImageView?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        
        setUpUI()
            }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI() {
        
        titleLabel = UILabel()
        subtitleLabel = UILabel()
        customImage = UIImageView()
        titleLabel?.text = "Upgrade to Pro"
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel?.translatesAutoresizingMaskIntoConstraints = false
        customImage?.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel?.text = "Level up your banking \n experience with pro"
        subtitleLabel?.numberOfLines = 0
        customImage?.image = UIImage(systemName: "gift.circle.fill")
        customImage?.tintColor = .orange
        
        if let titleLabel, let subtitleLabel, let customImage = customImage {
            contentView.addSubview(titleLabel)
            contentView.addSubview(subtitleLabel)
            contentView.addSubview(customImage)
            NSLayoutConstraint.activate([
                customImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                customImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
                customImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
                customImage.widthAnchor.constraint(equalToConstant: 70),
                customImage.heightAnchor.constraint(equalToConstant: 70),
                
                titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                titleLabel.leadingAnchor.constraint(equalTo: customImage.trailingAnchor, constant: 10),
                titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
                
                subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                subtitleLabel.leadingAnchor.constraint(equalTo: customImage.trailingAnchor, constant: 10),
                subtitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            ])
        }
    }
}
