//
//  CommonTypes.swift
//  TLKit CLI
//
//  Created by Konstantin Sukharev on 24/06/14.
//  Copyright (c) 2014 POed. All rights reserved.
//

import Foundation

typealias TLWord = Int32

protocol TLSerializable {
	
	func tlEncode() -> TLWord[]
}

protocol TLDeserializable {
	
	func tlDecode() -> AnyObject
}

extension Int: TLSerializable {
	
	func tlEncode() -> TLWord[] {
		
		return self.encode().reduce([]) {
			
			(var bytes: TLWord[], word: Word) -> TLWord[] in
			
			if sizeof(Word) == 4 {
				
				
			}
			else {
				
			}
			
			return bytes
		}
	}
}

extension Int32: TLSerializable {
	
	func tlEncode() -> TLWord[] {
		
		return [self]
	}
}

extension Int64: TLSerializable {
	
	func tlEncode() -> TLWord[] {
		
		let msb: TLWord = TLWord(self >> 32)
		let lsb: TLWord = TLWord(self & 0x00000000ffffffff)
		
		return [msb, lsb]
	}
}

extension Double: TLSerializable {
	
	func tlEncode() -> TLWord[] {
		
		return []
	}
}

extension String: TLSerializable {
	
	func tlEncode() -> TLWord[] {
		
		var encodedString: TLWord[] = []
		
		return encodedString
	}
}
