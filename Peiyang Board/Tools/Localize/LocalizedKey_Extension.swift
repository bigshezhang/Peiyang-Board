//
//  LocalizedKey_Extension.swift
//  PeiYang-Lite
//
//  Created by Zr埋 on 2021/9/30.
//

import SwiftUI

extension LocalizedStringKey {
    var stringKey: String {
        let description = "\(self)"

        let components = description.components(separatedBy: "key: \"")
            .map { $0.components(separatedBy: "\",") }

        return components[1][0]
    }
}

extension String {
    static func localizedString(for key: String,
                                locale: Locale = .current) -> String {
        
        var language = locale.languageCode ?? ""
        if (locale.scriptCode ?? "") != "" || language == "zh" {
            language += "-" + (locale.scriptCode ?? "Hans")
        }
        
        guard let path = Bundle.main.path(forResource: language, ofType: "lproj") else {
            return ""
        }
        guard let bundle = Bundle(path: path) else {
            return ""
        }
        let localizedString = NSLocalizedString(key, bundle: bundle, comment: "")
        
        return localizedString
    }
}

extension LocalizedStringKey {
    func stringValue(locale: Locale = .current) -> String {
        return .localizedString(for: self.stringKey, locale: locale)
    }
}
