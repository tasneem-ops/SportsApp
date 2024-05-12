//
//  CustomTableViewCell.swift
//  SportsApp
//
//  Created by JETSMobileLabMini6 on 12/05/2024.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var sportImage: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupUI() {
           // Add shadow
           layer.shadowColor = UIColor.black.cgColor
           layer.shadowOpacity = 0.3
           layer.shadowOffset = CGSize(width: 0, height: 2)
           layer.shadowRadius = 4
           layer.masksToBounds = false

           // Customize your cell's appearance here
           backgroundColor = UIColor.white
           layer.cornerRadius = 10 // Change the value to adjust the corner radius
           clipsToBounds = false // This ensures that subviews also respect the corner radius
           
           // Configure image view
           sportImage.contentMode = .scaleAspectFill
           sportImage.clipsToBounds = true
           sportImage.layer.cornerRadius = 10 // Set corner radius for the image view
       }
    
//    override func layoutSubviews() {
//            super.layoutSubviews()
//            layer.cornerRadius = 24
//            clipsToBounds = true
//               layer.shadowColor = UIColor.black.cgColor
//               layer.shadowOpacity = 0.5
//               layer.shadowOffset = CGSize(width: 0, height: 2)
//               layer.shadowRadius = 4
//               layer.masksToBounds = false
//               backgroundColor = UIColor.white
//                sportImage.clipsToBounds = true
//                sportImage.layer.cornerRadius = 10
//        }
    
}
