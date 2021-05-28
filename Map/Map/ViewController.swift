//
//  ViewController.swift
//  Map
//
//  Created by Jaemin Lee on 2021/05/28.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mapSample()
//        flatMapSample()
//        compactMapSample()
    }
    
//    map
//    map은 flat하게 만들지 않는다
    func mapSample() {
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        //        names.map {$0+"'s name"}
        print(names.map {$0+"'s name"})
        // ["Chris's name", "Alex's name", "Ewa's name", "Barry's name", "Daniella's name"]
        
        let array = [1,2,3,4,5]
        //        array.map {print($0+1)}
        print(array.map {$0+1})
        // [2, 3, 4, 5, 6]
       
        
        print("mapSample=====>:")
//        let optional: Int? = 8
//        let value = optional.map { $0 > 0 ? $0 : -$0 }
//        // value :  Optional(8)
//        print(value as Any)
        
        
//        var NumberValue = 12345
//        var NumToStr = String(NumberValue)
//        var StrToNum = Int(NumToStr)
//
//        print(NumToStr)
//        print(StrToNum) // Optional
        
        
//        let optionalInt: String? = "3"
//        let flatMappedOptionalString = optionalInt.flatMap { Int($0) }
//        // flatMapped Optional String :  Optional(3)
//
//        print(flatMappedOptionalString)
//
//        let mappedOptionalString = optionalInt.map { Int($0) }
//        // mapped Optional String :  Optional(Optional(3))
//
//        print(mappedOptionalString)
        
        let optionals: [Int?] = [0, 1, 2, nil, 4]

           let map = optionals.map { $0 }

        let flatMap = optionals.compactMap { $0 }


           print(map) // [Optional(0), Optional(1), Optional(2), nil, Optional(4)]
           print(flatMap) //[0, 1, 2, 4]
 }
    
    
//    non-nil인 결과들을 가지는 배열을 리턴
//    주어진 Sequence내의 요소들을 하나의 배열로써 리턴
//    주어진 Optional이 not-nil인지 판단 후 unwrapping하여 closure 파라미터로 전달

    
    func flatMapSample() {
        print("flatMapSample=====>:")
        let optionalArray: [Int?] = [1, 2, 3, 4, nil]
        print(optionalArray)
        // Optinal Array :  [Optional(1), Optional(2), Optional(3), Optional(4), nil]

        
        let flatMappedArray = optionalArray.flatMap { $0 }
        print(flatMappedArray)
        // flatMapped Array :  [1, 2, 3, 4]



        let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        let flatMappedNestedArray = nestedArray.flatMap { $0 }
        // flatMapped Nested Array :  [1, 2, 3, 4, 5, 6, 7, 8, 9]
        print(flatMappedNestedArray)


        let optional: Int? = 8
        let value = optional.flatMap { $0 > 0 ? $0 : -$0 }
        // value :  Optional(8)
        print(value as Any)
    }
    
    
//    flatMap
//    compactMap

    //    non-nil인 결과들을 가지는 배열을 리턴
    //    주어진 Sequence내의 요소들을 하나의 배열로써 리턴
    //    주어진 Optional이 not-nil인지 판단 후 unwrapping하여 closure 파라미터로 전달

        
        func compactMapSample() {
            print("compactMapSample=====>:")

            let optionalArray: [Int?] = [1, 2, 3, 4, nil]
            // Optinal Array :  [Optional(1), Optional(2), Optional(3), Optional(4), nil]

            /*
             * flatMap() vs compactMap()
             */

            let flatMappedArray = optionalArray.flatMap { $0 }
            // flatMapped Array :  [1, 2, 3, 4]
            print(flatMappedArray)

            let compactMappedArray = optionalArray.compactMap { $0 }
            // compactMapped Array :  [1, 2, 3, 4]
            print(compactMappedArray)
        }
}

