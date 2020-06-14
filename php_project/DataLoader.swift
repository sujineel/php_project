//
//  DataLoader.swift
//  php_project
//
//  Created by 김미주 on 2020/06/15.
//  Copyright © 2020 Mijoo Kim. All rights reserved.
//

import Foundation

public class DataLoader {
    
    @Published var hospitalData = [HospitalData]()
    
    init() {
        load()
        sort()
    }
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "Busan_hospital_data", withExtension: "json") {
            
            // do catch in case of an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([HospitalData].self, from: data)
                
                self.hospitalData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    // 여기서 내 위치 기준으로 정렬할 수 있을 거 같음, 지금은 이름으로 정렬
    func sort() {
        self.hospitalData = self.hospitalData.sorted(by: { $0.BIZPLC_NM < $1.BIZPLC_NM})
    }
}