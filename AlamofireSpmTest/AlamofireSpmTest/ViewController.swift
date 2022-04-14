//
//  ViewController.swift
//  AlamofireSpmTest
//
//  Created by 이재민 on 2022/04/14.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getTest()
    }
    
    ///샘플 사용
    /// 최신 버전은 AF 로 불가? -> 가능
    ///  AF-> import 우선 확인 필요.
    func getTest() {
            let url = "https://jsonplaceholder.typicode.com/todos/1"
            AF.request(url,
                       method: .get,
                       parameters: nil,
                       encoding: URLEncoding.default,
                       headers: ["Content-Type":"application/json", "Accept":"application/json"])
                .validate(statusCode: 200..<300)
                .responseJSON { response in
                    print("RESULT")
                    print(response.result)
            }
        
        
        // 타입 정확한 명시가 필요
        // 결과값에서 0으로 표기 되나 completed bool 값이다.
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   headers: ["Content-Type":"application/json", "Accept":"application/json"])
                    .validate(statusCode: 200..<500)
                    //200~500사이 상태만 허용
                    //JSON 포맷만 허용
                    .responseDecodable(of: SearchResult.self) { response in
                        print(response)
                        switch response.result {
                        case .success(let response):
                            print("RESULT-2")
                            print(response)
                        case .failure(let error):
                            print(error.localizedDescription)
                        }
                    }
        }


}

