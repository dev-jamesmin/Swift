//
//  Student.swift
//  Protocol
//
//  Created by Jaemin Lee on 2021/05/24.
//

import Foundation

protocol Student {
  var height: Double { get set }
  var name: String { get }
  static var schoolNumber: Int { get set }
}
