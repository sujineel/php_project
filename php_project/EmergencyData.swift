//
//  Emergency.swift
//  php_project
//
//  Created by 김미주 on 2020/06/19.
//  Copyright © 2020 Mijoo Kim. All rights reserved.
//

import Foundation

struct EmergencyData: Codable {
    var BIZPLC_NM: String = ""
    var REFINE_ROADNM_ADDR: String = ""
    var REFINE_WGS84_LAT: String = ""
    var REFINE_WGS84_LOGT: String = ""
    var LOCPLC_FACLT_TELNO_DTLS: String = ""
}
