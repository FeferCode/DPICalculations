//
//  BaseScreenDataBuilder.swift
//
//
//  Created by Jakub Majewski on 13/07/2023.
//


struct DPIBaseScreenDataBuilder {

    var resolution: (x: Int?, y: Int?)
    var screenDiagonalInInch: Float?

    typealias BuilderClosure = (DPIBaseScreenDataBuilder) -> ()

    init(builder: BuilderClosure) {
        builder(self)
    }
}

struct DPIScreenDataBuilder {
    var resolution: (x: Int?, y: Int?)
    var screenDiagonalInInch: Float?

    typealias BuilderClosure = (DPIScreenDataBuilder) -> ()

    init(builder: BuilderClosure) {
        builder(self)
    }
}
