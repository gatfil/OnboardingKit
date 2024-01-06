//
//  OnboardingInfo.swift
//
//  Created by Filippo Gatelli on 2024-01-06.
//

import SwiftUI

public struct OnboardingInfo: Identifiable {
    public let id: UUID = .init()
    let title: String
    let boxTitle: String

    public init(title: String, boxTitle: String) {
        self.title = title
        self.boxTitle = boxTitle
    }
}

extension OnboardingInfo {
    static let mock: OnboardingInfo = .init(title: "Welcome",
                                            boxTitle: "Continue")
}
