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
        // Do any additional setup after loading the view.
        getTest()
    }
    
    ///샘플 사용
    /// 최신 버전은 AF 로 불가?
    ///  AF-> import 우선
    func getTest() {
            let url = "https://jsonplaceholder.typicode.com/todos/1"
            AF.request(url,
                       method: .get,
                       parameters: nil,
                       encoding: URLEncoding.default,
                       headers: ["Content-Type":"application/json", "Accept":"application/json"])
                .validate(statusCode: 200..<300)
                .responseJSON { response in
                    //여기서 가져온 데이터를 자유롭게 활용하세요.
                    print(response)
            }
        
        
//        AF.request(url, method: .get, parameters: nil, headers: Constant.HEADER)
//                    .validate(statusCode: 200..<500)
//                    //200~500사이 상태만 허용
//                    .validate(contentType: ["application/json"])
//                    //JSON 포맷만 허용
//                    .responseDecodable(of: PresentMoaHomeResponse.self) { response in
//                        switch response.result {
//                        case .success(let response):
//                            viewController.serverData = response.data
//                            viewController.didSuccessGot(message: response.message!)
//                        case .failure(let error):
//                            print(error.localizedDescription)
//                        }
//                    }
        }


}

