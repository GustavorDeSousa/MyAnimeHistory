//
//  DetailsAnimeViewController.swift
//  MyAnimesHistory
//
//  Created by Gustavo De Sousa on 13/04/19.
//  Copyright © 2019 Gustavo De Sousa. All rights reserved.
//

import UIKit

class DetailsAnimeViewController: UIViewController {
    
    class func create() -> DetailsAnimeViewController {
        let controller = DetailsAnimeViewController(nibName: "DetailsAnimesView", bundle: nil)
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
