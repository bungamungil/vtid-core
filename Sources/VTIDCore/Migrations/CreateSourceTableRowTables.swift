//
//  CreateSourceTableRowTables.swift
//  
//
//  Created by Bunga Mungil on 04/07/23.
//

import Fluent


public struct CreateSourceTableRowTables: AsyncMigration {
        
    public func prepare(on database: Database) async throws {
        try await database.schema(SourceTableRowModel.schema)
            .id()
            .field("channel_id", .string, .required)
            .field("vtuber_persona", .string)
            .field("vtuber_birthday", .datetime)
            .field("vtuber_affiliation", .string)
            .field("vtuber_affiliation_logo", .string)
            .field("created_at", .datetime)
            .field("updated_at", .datetime)
            .create()
    }
    
    public func revert(on database: Database) async throws {
        try await database.schema(SourceTableRowModel.schema).delete()
    }
    
}
