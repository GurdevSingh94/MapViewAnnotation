//
//  ViewController.swift
//  mapAnnotation
//
//  Created by Gurdev Singh on 09/03/2018.
//  Copyright © 2018 Gurdev Singh. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        let span : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta:0.01,longitudeDelta:0.01)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(53.465865, -2.347478)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location,span: span)
        
        map.setRegion(region, animated: false)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Trafford Center"
        annotation.subtitle = "Manchester"
        map.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

