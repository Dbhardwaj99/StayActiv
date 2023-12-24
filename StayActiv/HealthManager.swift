//
//  HealthManager.swift
//  StayActiv
//
//  Created by Divyansh Bhardwaj on 25/12/23.
//

import Foundation
import HealthKit

class HealthManager: ObservableObject{
    
    let healthStore = HKHealthStore()
    
    init() {
        let steps = HKQuantityType(.stepCount)
        
        let healthTypes: Set = [steps]
        
        Task{
            do{
                try await healthStore.requestAuthorization(toShare:[], read:healthTypes)
            }catch{
                print("error catching health data")
            }
        }
    }
    
}
