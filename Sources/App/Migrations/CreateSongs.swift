//
//  CreateSongs.swift
//
//
//  Created by Alanoud on 01/11/1445 AH.
//

import Fluent

struct CreateSongs : Migration {
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("songs").delete()
    }
    
    
    
}
