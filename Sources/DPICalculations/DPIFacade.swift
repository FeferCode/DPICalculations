//
//  DPIFacade.swift
//
//
//  Created by Jakub Majewski on 13/07/2023.
//

import Foundation

public protocol DPIFacade {
    func calculateAllData(ForScreen data: DPIBaseScreenData) -> DPIScreenData
}

