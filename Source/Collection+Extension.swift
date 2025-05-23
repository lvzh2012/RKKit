//
//  Collection+Extension.swift
//  RKKit
//
//  Created by zhenhua.lv on 2025/5/23.
//

import Foundation

extension Collection {
    
    /// - Parameter keyPath: keypath
    /// - Returns: [T]
    ///
    ///  ```swift
    ///     let l1 = [RoutineModel(id: "1", tagList: ["2", "3"], color: "#111"), RoutineModel(id: "12", tagList: ["22", "32"], color: "#222")]
    ///     print("----id = ", l1.map(\.id))
    ///     // ["1", "12"]
    ///  ```
//    public func map<T>(_ keyPath: KeyPath<Element, T>) -> [T] {
//        map({ $0[keyPath: keyPath] })
//    }
    
    ///  use same with  ``map(_:)``  but the result is not optional T
    public func compactMap<T>(_ keyPath: KeyPath<Element, T> )-> [T] {
        compactMap { $0[keyPath: keyPath] }
    }
}
