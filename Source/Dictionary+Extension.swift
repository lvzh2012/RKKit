//
//  Dictionary+Extension.swift
//  RKKit
//
//  Created by zhenhua.lv on 2025/5/23.
//

import Foundation

extension Dictionary where Value == Any {
    
    /// - useage
    /// ```swift
    ///   let dictionary: [String: Any] = ["numberOfCoins": 10]
    ///   let num = dictionary.valueFor("numberOfCoins", defaultValue: 100)
    ///  ```
    public func valueFor<T>(_ key: Key,
                            defaultValue: @autoclosure () -> T) -> T {
        guard let value = self[key] as? T else {
            return defaultValue()
        }
        return value
    }
    
    /// - useage
    /// ```swift
    ///   let dictionary: [String: Any] = ["a": "b"]
    ///   let num = dictionary["numberOfCoins", 100]
    /// ```
    public subscript <T>(key: Key,
                         defaultValue: @autoclosure () -> T) -> T {
        guard let value = self[key] as? T else {
            return defaultValue()
        }
        return value
    }
}

extension Dictionary where Value == AnyObject {
    /// - useage
    /// ```swift
    ///    let dictionary: [String: AnyObject] = ["numberOfCoins": 10]
    ///    let num = dictionary.valueFor("numberOfCoins", defaultValue: 100)
    /// ```
    public func valueFor<T>(_ key: Key,
                            defaultValue: @autoclosure () -> T) -> T {
        guard let value = self[key] as? T else {
            return defaultValue()
        }
        return value
    }
    
    /// - useage
    /// ```swift
    ///   let dictionary: [String: AnyObject] = ["a": "b"]
    ///   let num = dictionary["numberOfCoins", 100]
    /// ```
    public subscript <T>(key: Key,
                         defaultValue: @autoclosure () -> T) -> T {
        guard let value = self[key] as? T else {
            return defaultValue()
        }
        return value
    }
}

extension Dictionary {
    public var logJsonString: String {
        if let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted),
           let jsonStr = String(data: data, encoding: .utf8) {
            return jsonStr
        } else {
            return ""
        }
    }
}
