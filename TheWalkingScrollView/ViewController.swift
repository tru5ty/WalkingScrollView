//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Nathan McGuire on 15/11/2015.
//  Copyright © 2015 Off Da Husk Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let Height: CGFloat = 380
    let Width: CGFloat = 221
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            
            imgView.frame = CGRectMake(-Width + (Width * CGFloat(x)), 250, Width, Height)
        }
        
        scrollView.contentSize = CGSizeMake(Width * 5, scrollView.frame.size.height)
        
        }
    }

