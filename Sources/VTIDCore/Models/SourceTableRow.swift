//
//  SourceTableRow.swift
//  
//
//  Created by Bunga Mungil on 04/07/23.
//

import Fluent
import FluentTimestamp
import Foundation


public protocol SourceTableRow: HasTimestamp {
    
    var channelID: String { get }
    
    var vtuberPersona: String? { get }
    
    var vtuberBirthday: Date? { get }
    
    var vtuberAffiliation: String? { get }
    
    var vtuberAffiliationLogo: String? { get }
    
}


public final class SourceTableRowModel: SourceTableRow, Model {
    
    public static var schema: String = "source_table_rows"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "channel_id")
    public var channelID: String
    
    @Field(key: "vtuber_persona")
    public var vtuberPersona: String?
    
    @Field(key: "vtuber_birthday")
    public var vtuberBirthday: Date?
    
    @Field(key: "vtuber_affiliation")
    public var vtuberAffiliation: String?
    
    @Field(key: "vtuber_affiliation_logo")
    public var vtuberAffiliationLogo: String?
    
    @Field(timestamp: .createdAt)
    public var createdAt: Date?
    
    @Field(timestamp: .updatedAt)
    public var updatedAt: Date?
    
    public init() { }
    
    public init(
        id: UUID? = nil,
        channelID: String,
        vtuberPersona: String? = nil,
        vtuberBirthday: Date? = nil,
        vtuberAffiliation: String? = nil,
        vtuberAffiliationLogo: String? = nil
    ) {
        self.id = id
        self.channelID = channelID
        self.vtuberPersona = vtuberPersona
        self.vtuberBirthday = vtuberBirthday
        self.vtuberAffiliation = vtuberAffiliation
        self.vtuberAffiliationLogo = vtuberAffiliationLogo
        self.createdAt = Date()
    }

}
