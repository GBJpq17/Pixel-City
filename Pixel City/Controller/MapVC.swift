//
//  MapVC.swift
//  Pixel City
//
//  Created by RyLo on 8/29/17.
//  Copyright © 2017 GBJpq. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    @IBAction func centerMapButtonPressed(_ sender: Any) {
    }
}

extension MapVC: MKMapViewDelegate {
    
}

