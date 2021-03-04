//
//  BountyViewController.swift
//  BountyList
//
//  Created by Woochan Park on 2021/03/04.
//

import UIKit

class BountyViewController: UIViewController {
  
  // MVVM
  
  // Model
  // - BountyInfo
  // > BountyInfo 만들기
  
  // View
  // - ListCell
  // > ListCell 필요한 정보를 ViewModel에게서 받아야 한다
  // > ListCell은 ViewModel로부터 받은 정보로 뷰 업데이트 하기
  // - BountyViewController
  
  // ViewModel
  // - BountyViewModel
  // > BoundtyViewModel을 만들고, 뷰레이어에서 필요한 메서드 만들기
  // > 모델을 가지고 있기 ,,, BountyInfo 들
  
  // 기술부채가 존재
  // 각각의 배열이 더블링 되어 있지 않기 때문에 추가, 삭제, 정렬 작업 시 따로 관리해줘야함

  override func viewDidLoad() {
    super.viewDidLoad()
      // Do any additional setup after loading the view.
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    if segue.identifier == "showDetail" {
      let vc = segue.destination as? DetailViewController
      
      if let index = sender as? Int { vc?.bountyInfo = BountyInfo.bountyInfoList[index] }
    }
  }
}


// MARK: UITableViewDataSource
extension BountyViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return BountyInfo.bountyInfoList.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ListCell else {
      return UITableViewCell()
    }
    
    let info = BountyInfo.bountyInfoList[indexPath.row]
    
    cell.nameLable.text = info.name
    cell.bountyLable.text = String(info.bounty)
    cell.imgView.image = UIImage(named: info.name)
    
    return cell
  }
}

// MARK: UITableViewDelegate
extension BountyViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("---> \(indexPath.row)")
    performSegue(withIdentifier: "showDetail", sender:  indexPath.row)
  }
}

// MARK: Custom TableView Cell
class ListCell: UITableViewCell {
  @IBOutlet weak var imgView: UIImageView!
  @IBOutlet weak var nameLable: UILabel!
  @IBOutlet weak var bountyLable: UILabel!
}

