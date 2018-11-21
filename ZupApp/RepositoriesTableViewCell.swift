//
//  RepositoriesTableView.swift
//  ZupApp
//
//  Created by Amanda Rosa on 2018-11-20.
//  Copyright © 2018 Amanda Rosa. All rights reserved.
//

import UIKit

class RepositoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbHtml: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    
    func prepareCell(_ repository: [String]) {
        lbName.text = repository[0]
        lbHtml.text = repository[1]
        lbDescription.text = repository[2]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: false)
    }
    
}
