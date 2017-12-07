import Foundation

extension HTTPURLResponse {
    convenience init?(dictionary: [String: Any]) {
        guard let urlString = dictionary["url"] as? String,
            let url = URL(string: urlString),
            let statusCode = dictionary["status"] as? Int
        else { return nil }

        let headers = dictionary["headers"] as? [String: String]
        self.init(url: url, statusCode: statusCode, httpVersion: nil, headerFields: headers)
    }
}

