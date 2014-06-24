//
//  IntExtensions.swift
//  TLKit CLI
//
//  Created by Konstantin Sukharev on 24/06/14.
//  Copyright (c) 2014 POed. All rights reserved.
//

import Foundation

extension Int {
	
	func times(repeat: () -> ()) {
		
		for _ in 0..self {
			
			repeat()
		}
	}
	
	func timesWithIndex(repeat: (index: Int) -> ()) {
		
		for i in 0..self {
			
			repeat(index: i)
		}
	}
}