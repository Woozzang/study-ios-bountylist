//
//  BountyViewModel.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import Foundation

class BountyViewModel {
  
  static let shared = BountyViewModel()
  
  private init() {}
  
  private let bountyInfoList: [BountyInfo] = [
    BountyInfo(name: "brook", bounty: 33000000),
    BountyInfo(name: "chopper", bounty: 50),
    BountyInfo(name: "franky", bounty: 44000000),
    BountyInfo(name: "luffy", bounty: 300000000),
    BountyInfo(name: "nami", bounty: 16000000),
    BountyInfo(name: "robin", bounty: 80000000),
    BountyInfo(name: "sanji", bounty: 77000000),
    BountyInfo(name: "zoro", bounty: 120000000)
  ]
  
  var numOfBountyInfolist: Int {
    return bountyInfoList.count
  }
  
  func bountyInfo(at index: Int) -> BountyInfo? {
    guard index >= 0, numOfBountyInfolist > 0 else { return nil }
    
    return self.bountyInfoList[index]
  }
}
