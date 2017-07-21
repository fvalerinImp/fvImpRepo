//
//  NewsTableViewCell.swift
//  New
//
//  Created by Federico Valerin on 5/18/17.
//  Copyright © 2017 Federico Valerin. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var fechaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(poNews: clsNew){
        
        titleLabel.text = poNews.titleNews
        descriptionLabel.text = poNews.descriptionNews
        fechaLabel.text = poNews.createdAt.toString( dateFormat: "yyyy-MM-dd HH:mm:ss")
        
    }
    
}

extension Date {
    func toString(dateFormat format:String)->String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from:self)
    }
}
