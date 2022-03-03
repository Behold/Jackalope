//
//  TipModel.swift
//  Jackalope
//
//  Created by Joseph Larama on 1/17/22.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case putting = "Putting"
    case fullswing = "Full Swing"
    case chipping = "Chipping"
    case driver = "Driver"
    case bunker = "Bunker"
    
    var description: String {
        switch self {
        case .putting:
            return "Putting: Soluta quis impedit. Explicabo ullam eligendi necessitatibus inventore dolor laboriosam dignissimos at eligendi."
        case .fullswing:
            return "Fullswing: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        case .chipping:
            return "Chipping: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        case .driver:
            return "Driver: Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam."
        case .bunker:
            return "Bunker: Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur."
        }
    }
    var icon: String {
        switch self {
        case .putting:
            return "sterlingsign.circle"
        case .fullswing:
            return "dollarsign.circle"
        case .chipping:
            return "centsign.circle"
        case .driver:
            return "yensign.circle"
        case .bunker:
            return "turkishlirasign.circle"
        }
    }
        
}
struct Tip: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let category: Category.RawValue
    let isFavorite: Bool
    let collection: [String]
}

extension Tip {
    static let all: [Tip] = [
        Tip(
            name: "Short putts (2-4ft)",
            image: "Rectangle-0",
            description: "Revision of Drainage Device in Thymus, Percutaneous Endoscopic Approach",
            category: "Putting",
            isFavorite: true,
            collection: ["One", "Four"]
        ),
        Tip(
            name: "Finch",
            image: "Rectangle-1",
            description: "Fluoroscopy of Pelvic Arteries using Low Osmolar Contrast",
            category: "Full Swing",
            isFavorite: false,
            collection: ["One", "Two"]
        ),
        Tip(
            name: "Medium putts (4-12ft)",
            image: "Rectangle-2",
            description: "Drainage of Perineum Muscle with Drainage Device, Percutaneous Endoscopic Approach",
            category: "Putting",
            isFavorite: false,
            collection: ["Four"]
        ),
        Tip(
            name: "Standard bunker shot",
            image: "Rectangle-3",
            description: "Removal of Infusion Device from Lower Back, Percutaneous Approach",
            category: "Bunker",
            isFavorite: false,
            collection: ["Five"]
        ),
        Tip(
            name: "Some really long title for some fucking reason",
            image: "Rectangle-4",
            description: "Repair Appendix, Open Approach",
            category: "Full Swing",
            isFavorite: false,
            collection: ["Three", "Five"]
        ),
        Tip(
            name: "Wet bunker sand",
            image: "Rectangle-5",
            description: "Restriction of Right Hepatic Duct, Via Natural or Artificial Opening",
            category: "Bunker",
            isFavorite: false,
            collection: ["Two"]
        ),
        Tip(
            name: "Flop shot",
            image: "Rectangle-6",
            description: "Removal of Synthetic Substitute from Right Metatarsal-Phalangeal Joint, Percutaneous Endoscopic Approach",
            category: "Chipping",
            isFavorite: false,
            collection: ["Three"]
        ),
        Tip(
            name: "Soft bunker sand",
            image: "Rectangle-7",
            description: "Removal of Synthetic Substitute from Head, Open Approach",
            category: "Bunker",
            isFavorite: false,
            collection: ["Four"]
        ),
        Tip(
            name: "Platypus",
            image: "Rectangle-8",
            description: "Fluoroscopy of Right Ureter using Other Contrast",
            category: "Full Swing",
            isFavorite: false,
            collection: ["One"]
        ),
        Tip(
            name: "Long putts (12ft+)",
            image: "Rectangle-9",
            description: "Drainage of Left Common Iliac Artery, Open Approach",
            category: "Putting",
            isFavorite: false,
            collection: ["One", "Three"]
        ),
        Tip(
            name: "Hit your drives straight",
            image: "Rectangle-10",
            description: "Computerized Tomography (CT Scan) of Cisterna using Low Osmolar Contrast",
            category: "Driver",
            isFavorite: false,
            collection: ["Two", "Five"]
        ),
        Tip(
            name: "Texas wedge",
            image: "Rectangle-11",
            description: "Computerized Tomography (CT Scan) of Cisterna using Low Osmolar Contrast",
            category: "Chipping",
            isFavorite: false,
            collection: ["Three"]
        ),
        
    ]
}
