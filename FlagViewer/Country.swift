//
//  Country.swift
//  FlagViewer
//
//  Created by Paul Richardson on 05/04/2021.
//

import Foundation

enum Country: String, CaseIterable {
	case estonia, france, germany, ireland, italy, monaco, nigeria, poland, russia, spain, uk, us

	var title: String {
		switch self {
		case .uk:
			return "United Kingdom"
		case .us:
			return "United States"
		default:
			return self.rawValue.capitalized
		}
	}

}
