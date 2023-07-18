//
//  ScreenData.swift
//
//
//  Created by Jakub Majewski on 13/07/2023.
//

import Foundation

public struct DPIScreenData {

    public private(set) var company: String?
    public private(set) var model: String?
    public private(set) var year: String?
    public private(set) var date: Date?

    public private(set) var resolution: (x:Int,y:Int) = (0,0)
    public private(set) var screenDiagonalInInch: Float = 0
    public private(set) var ratio: (x: Int, y: Int) = (0,0)
    public private(set) var aspectRatio: Float = 0

    public private(set) var screenSizeInCm:(x: Float, y: Float) = (0,0)
    public private(set) var screenSizeInInch:(x: Float, y: Float) = (0,0)

    public private(set) var workSurfaceInCm:Float = 0
    public private(set) var workSurfaceInInch:Float = 0

    public private(set) var numberOfPixels:Int = 0
    public private(set) var numberOfMegaPixels:Float = 0
    public private(set) var PPI:Float = 0

    mutating func setBaseData(_ data: DPIBaseScreenData) {
        self.resolution.x = data.resolution.x
        self.resolution.y = data.resolution.y
        self.screenDiagonalInInch = data.screenDiagonalInInch
    }

    mutating func setRatio(x:Int, y:Int, aspectRatio:Float) {
        self.ratio.x = x
        self.ratio.y = y
        self.aspectRatio = aspectRatio
    }

    mutating func setScreenSize(xInch: Float, yInch: Float, xCm: Float, yCm: Float) {
        self.screenSizeInCm.x = xCm
        self.screenSizeInCm.y = yCm
        self.screenSizeInInch.x = xInch
        self.screenSizeInInch.y = yInch
    }

    mutating func setWorkSurface(cm: Float, inch: Float) {
        self.workSurfaceInCm = cm
        self.workSurfaceInInch = inch
    }

    mutating func setNumberOf(pixels: Int, megaPixels: Float) {
        self.numberOfPixels = pixels
        self.numberOfMegaPixels = megaPixels
    }

    mutating func setPPI(_ ppi: Float){
        self.PPI = Float(ppi)

    }

    mutating func setDisplayData(year: String, model: String, company: String) {
        self.company = company
        self.model = model
        self.year = year
        self.date = Date()
    }

    func printAllProperties() {
        print("=========================")
        print("Screen size: \(self.screenDiagonalInInch) inch")
        print("Resolution: \(self.resolution.x) : \(self.resolution.y)")
        print("Ratio: \(self.ratio.x) : \(self.ratio.y)")
        print("Aspect ratio: \(self.aspectRatio)")
        print("Screen size (cm): \(self.screenSizeInCm.x) : \(self.screenSizeInCm.y)")
        print("Work surface (cm): \(self.workSurfaceInCm)")
        print("Screen size (inch): \(self.screenSizeInInch.x) : \(self.screenSizeInInch.y)")
        print("Work surface (inch): \(self.workSurfaceInInch)")
        print("Number of pixels: \(self.numberOfPixels)")
        print("Number of megapiksels: \(self.numberOfMegaPixels) Mpix")
        print("Screen PPI: \(self.PPI)")
        if self.company != nil {
            print("Company: \(String(describing: self.company))\nModel: \(String(describing: self.model))\nYear: \(String(describing: year))\nDate: \(String(describing: self.date))")
        }
        print("=========================")
    }
}
