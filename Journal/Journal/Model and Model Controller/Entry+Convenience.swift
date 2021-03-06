//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Andrew Liao on 8/13/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    convenience init(title: String, bodyText: String? = nil, timeStamp: Date = Date(),
                     identifier: String = UUID().uuidString,  context: NSManagedObjectContext = CoreDataStack.shared.mainContext){
        
        //Uses the designated initializer the intialize the Entry object
        self.init(context: context)
        //Sets the properties according to the parameters of the convenience initializer
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = timeStamp
        self.identifier = identifier
        
    }
}

