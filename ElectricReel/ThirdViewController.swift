//
//  ThirdViewController.swift
//  ElectricReel
//
//  Created by Andrew Palka on 3/9/16.
//  Copyright © 2016 Andrew Palka. All rights reserved.
//

import UIKit
import Mapbox


class ThirdViewController: UIViewController, MGLMapViewDelegate {
    
    var dict:NSDictionary?
    
        override func viewDidLoad() {
            super.viewDidLoad()
            let filePath = NSBundle.mainBundle().pathForResource("cilshngh0009ta7ltfu351fyr", ofType: "json")
            let data = NSData(contentsOfFile: filePath!)
            
            self.dict = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? NSDictionary
//            self.dict = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as? NSDictionary
            
            let styleURL = NSURL(string: "https://www.mapbox.com/ios-sdk/files/mapbox-raster-v8.json")
            // for local styles, use: "asset://styleName.json"
            
            
            let mapView = MGLMapView(frame: view.bounds,
                styleURL: styleURL)
            
            
            mapView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            
            view.addSubview(mapView)
        }
   /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
