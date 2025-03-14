//
//  ViewController.swift
//  maps annotation
//
//  Created by Riccardo Abballe on 01/03/25.
//

import UIKit
import MapKit
import CoreLocation //Per gestire le location nella mappa

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var latLabel: UILabel!
    
    @IBOutlet weak var longLabel: UILabel!
    
    //Focus su un luogo specifico
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        //45.070339, 7.686864
        
        let location = CLLocationCoordinate2D(latitude: 45.070339, longitude: 7.686864) //oggetto location con le coordinate
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span) //definizione della regione centrata nella location con lo span dichiarato sopra
        mapView.setRegion(region, animated: true)
        
        // Aggiungere un'annotation sulla mappa
        let annotation = MKPointAnnotation()
            annotation.coordinate = location
            annotation.title = "Città di Torino"
            annotation.subtitle = "Angolo di via Po"
            mapView.addAnnotation(annotation)
    }*/
    
    

    @IBAction func didTouchMap(_ sender: UILongPressGestureRecognizer) {
        let position = sender.location(in: mapView) //per indicare la posizione
        let coord = mapView.convert(position, toCoordinateFrom: mapView)
        
        latLabel.text = "Latitude: \(coord.latitude)"
        longLabel.text = "Longitude: \(coord.longitude)"
    }
    
    
}

