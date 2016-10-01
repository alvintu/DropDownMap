//
//  MapViewController.swift
//  MealDex
//
//  Created by Jo Tu on 9/15/16.
//  Copyright © 2016 hellotojello. All rights reserved.
//

import MapKit
class MapViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)



    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        mapView.showsUserLocation = true


    }
  

}
