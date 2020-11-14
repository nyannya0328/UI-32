//
//  item.swift
//  UI-32
//
//  Created by にゃんにゃん丸 on 2020/11/14.
//

import SwiftUI

struct  item : Identifiable {
    var id = UUID().uuidString
    var name : String
    var cost : String
    var image : String
}

var items = [
item(name: "A", cost: "100", image: "p2"),
    item(name: "B", cost: "200", image: "p3")
    

]
