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

    init(xPixel: Int, yPixel: Int, diagonal: Float) {
        resolution.x = xPixel
        resolution.y = yPixel
        screenDiagonalInInch = diagonal
        data = Date()
    }

    public var description: String {
        return "Resolution: \(resolution.x)x\(resolution.y) with \(screenDiagonalInInch)\""
    }
}
