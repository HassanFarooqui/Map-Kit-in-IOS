//
//  ViewController.swift
//  Map App with slide view
//
//  Created by SGI-Mac7 on 06/01/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    
    @IBOutlet weak var Map: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
         let Location = CLLocationCoordinate2DMake(24.8942104,67.08806279999999)
         let annotation = MKPointAnnotation()
         annotation.coordinate = Location
         annotation.title = "National Stadium karachi"
         annotation.subtitle = "Cricket Ground"
        Map.addAnnotation(annotation)
        self.Map.camera = MKMapCamera(lookingAtCenter:Location, fromDistance: 17, pitch: 1, heading: 3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

