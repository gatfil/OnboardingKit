//
//  OnboardingConfiguration.swift
//
//  Created by James Sedlacek on 12/30/23.
//

import SwiftUI

public struct OnboardingConfiguration {
    let privacyUrlString: String
    let accentColor: Color
    let lang: String
    let features: [FeatureInfo]
    let OnboardingData: OnboardingInfo
    let titleSectionAlignment: HorizontalAlignment

    public init(privacyUrlString: String,
                accentColor: Color = .blue,
                lang: String = "en",
                features: [FeatureInfo], 
                OnboardingData: OnboardingInfo,
                titleSectionAlignment: HorizontalAlignment = .leading) {
        self.privacyUrlString = privacyUrlString
        self.accentColor = accentColor
        self.features = features
        self.OnboardingData = OnboardingData
        self.titleSectionAlignment = titleSectionAlignment
        self.lang = lang
    }
}

public extension OnboardingConfiguration {
    static let mock = Self.init(privacyUrlString: "https://www.apple.com/legal/privacy/data/en/app-store/",
                                features: [.init(image: Image(systemName: "iphone"),
                                                 title: "Find your perfect match.",
                                                 content: "Easily check what's compatible with your devices. And browse product recommendations in the app."),
                                           .init(image: Image(systemName: "barcode.viewfinder"),
                                                 title: "Self-checkout at the Apple Store.",
                                                 content: "Scan to pay for certain products right from your iPhone — no employee assistance required."),
                                           .init(image: Image(systemName: "shippingbox"),
                                                 title: "Track your deliveries.",
                                                 content: "Get real-time updates on orders, all the way from your shopping bag to your home.")],
                                OnboardingData: .init(title: "Welcome",
                                                      boxTitle: "Continue")
    )
}
