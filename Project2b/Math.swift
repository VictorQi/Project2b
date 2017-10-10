//
//  Math.swift
//  Project2b
//
//  Created by victor on 2017/10/10.
//  Copyright © 2017年 victor qi. All rights reserved.
//

import Foundation
import CoreLocation

func deg2rad(_ degrees: Double) -> Double {
    return degrees * .pi / 180
}

func rad2deg(_ radians: Double) -> Double {
    return radians * 180 / .pi
}

func direction(from p1: CLLocation, to p2: CLLocation) -> Double {
    let lat1 = deg2rad(p1.coordinate.latitude)
    let lon1 = deg2rad(p1.coordinate.longitude)
    
    let lat2 = deg2rad(p2.coordinate.latitude)
    let lon2 = deg2rad(p2.coordinate.longitude)
    
    let lon_delta = lon2 - lon1
    let y = sin(lon_delta) * cos(lon2)
    let x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lon_delta)
    let radians = atan2(y, x)
    return rad2deg(radians)
}
