class JsonSerialization: NSObject {
    static func getDictionaryFromJsonString(rowData:Data)-> Dictionary<String,AnyObject> {
        do {
            return try JSONSerialization.jsonObject(with: rowData, options:  JSONSerialization.ReadingOptions.allowFragments) as! Dictionary
        } catch {
            return [:]
        }
    }
    
    static func getDictionaryFromJsonString(dictString:String)-> [String: Any] {
        do {
            return try  JSONSerialization.jsonObject(with: dictString.data(using: String.Encoding.utf8, allowLossyConversion: true)!, options:  JSONSerialization.ReadingOptions.allowFragments) as! Dictionary
        } catch {
            return [:]
        }
    }
    
    static func getArrayFromJsonString(dictString:String)-> [String] {
        do {
            return try  JSONSerialization.jsonObject(with: dictString.data(using: String.Encoding.utf8, allowLossyConversion: true)!, options:  JSONSerialization.ReadingOptions.allowFragments) as! [String]
        } catch {
            return []
        }
    }
    
    static func getArrayFromJsonString(rowData:Data)-> [[String : AnyObject]] {
        do {
            return try JSONSerialization.jsonObject(with: rowData, options:  JSONSerialization.ReadingOptions.allowFragments) as? [[String : AnyObject]] ?? []
        } catch {
            return []
        }
    }
    
    static func getArrayFromJsonString(arrayString:String)-> [[String : AnyObject]] {
        do {
            return try  JSONSerialization.jsonObject(with: arrayString.data(using: String.Encoding.utf8, allowLossyConversion: true)!, options:  JSONSerialization.ReadingOptions.allowFragments) as! [[String : AnyObject]]
        } catch {
            return []
        }
    }
    
    static func getArrayFromJsonString(rowData:Data)-> [[String]] {
        do {
            return try JSONSerialization.jsonObject(with: rowData, options:  JSONSerialization.ReadingOptions.allowFragments) as? [[String]] ?? []
        } catch {
            return []
        }
    }
    
    static func getJsonString(rowData:Data)-> String {
        return NSString(data: rowData, encoding: String.Encoding.utf8.rawValue)! as String
    }
    
    static func getJsonString(array : [String]) -> String {
        do {
            return try getJsonString(rowData: JSONSerialization.data(withJSONObject: array, options: JSONSerialization.WritingOptions()))
        } catch {
            return ""
        }
    }
    
    static func getJsonString(array : [[String : Any]]) -> String {
        do {
            return try getJsonString(rowData: JSONSerialization.data(withJSONObject: array, options: JSONSerialization.WritingOptions()))
        } catch {
            return ""
        }
    }
    
    static func getJsonString(dictionary : [String : Any]) -> String {
        do {
            return try getJsonString(rowData: JSONSerialization.data(withJSONObject: dictionary, options: JSONSerialization.WritingOptions()))
        } catch {
            return ""
        }
    }
}
