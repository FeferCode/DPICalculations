//
//  BaseScreenData.swift
//
//
//  Created by Jakub Majewski on 13/07/2023.
//

import Foundation

public struct DPIBaseScreenData: CustomStringConvertible {

    public private(set) var resolution: (x: Int, y: Int)
    public private(set) var screenDiagonalInInch: Float
    public private(set) var data: Date

    init?(builder: DPIBaseScreenDataBuilder) {
        if let x = builder.resolution.x,
            let y = builder.resolution.y,
            let diagonal = builder.screenDiagonalInInch {
            resolution.x = x
            resolution.y = y
            screenDiagonalInInch = diagonal
            data = Date()
        } else {
            return nil
        }
    }

    public var description:String {
        return "Resolution: \(resolution.x)x\(resolution.y) with \(screenDiagonalInInch)\""
    }
}
