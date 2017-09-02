//
//  PopVC.swift
//  Pixel City
//
//  Created by RyLo on 9/2/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var popImageView: UIImageView!
    
    var passesImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passesImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passesImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(PopVC.screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
