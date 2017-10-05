//
//  DetailViewController.swift
//  TestMD
//
//  Created by Terry McCart on 10/2/17.
//  Copyright © 2017 Terry McCart. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet var productImageView: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            if let photo = productImageView {
                print(detailItem!)
                photo.image = UIImage(named:detailItem!)
            }
        }else{
            productImageView.image = UIImage(named:"Main.png")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

