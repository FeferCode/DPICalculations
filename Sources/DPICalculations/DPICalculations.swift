//
//  DPICalculations.swift
//
//
//  Created by Jakub Majewski on 13/07/2023.
//  Old code

public class DPICalculations: DPIFacade {

    private let calculationManager = DPICalculationManager()

    public static let shared: DPICalculations = {
        let shared = DPICalculations()
        return shared
    }()

    private init() { }

    public func calculateAllData(ForScreen data: DPIBaseScreenData) -> DPIScreenData {
        return calculationManager.calculateAllData(ForScreen: data)
    }
    
}


