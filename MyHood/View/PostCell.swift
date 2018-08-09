//
//  PostCell.swift
//  MyHood
//
//  Created by SCL IT on 08/08/18.
//  Copyright © 2018 Nikhil. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        postImg.layer.cornerRadius = 15
    }

    
    func configureCell(_ post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imagePath)
    }
    
}
