//
// Copyright (c) 2018 Redbeard Services Ltd. All rights reserved.
//

/**
 *  Random value generation.
 */
@objcMembers public class RBRandom: NSObject {
    
    private static let words = ["lorem", "ipsum", "dolor", "sit", "amet", "consectetuer", "adipiscing", "elit", "integer", "in", "mi", "a", "mauris", "ornare", "sagittis", "suspendisse", "potenti", "suspendisse", "dapibus", "dignissim", "dolor", "nam", "sapien", "tellus", "tempus", "et", "tempus", "ac", "tincidunt", "in", "arcu", "duis", "dictum", "proin", "magna", "nulla", "pellentesque", "non", "commodo", "et", "iaculis", "sit", "amet", "mi", "mauris", "condimentum", "massa", "ut", "metus", "donec", "viverra", "sapien", "mattis", "rutrum", "tristique", "lacus", "eros", "semper", "tellus", "et", "molestie", "nisi", "sapien", "eu", "massa", "vestibulum", "ante", "ipsum", "primis", "in", "faucibus", "orci", "luctus", "et", "ultrices", "posuere", "cubilia", "curae;", "fusce", "erat", "tortor", "mollis", "ut", "accumsan", "ut", "lacinia", "gravida", "libero", "curabitur", "massa", "felis", "accumsan", "feugiat", "convallis", "sit", "amet", "porta", "vel", "neque", "duis", "et", "ligula", "non", "elit", "ultricies", "rutrum", "suspendisse", "tempor", "quisque", "posuere", "malesuada", "velit", "sed", "pellentesque", "mi", "a", "purus", "integer", "imperdiet", "orci", "a", "eleifend", "mollis", "velit", "nulla", "iaculis", "arcu", "eu", "rutrum", "magna", "quam", "sed", "elit", "nullam", "egestas", "integer", "interdum", "purus", "nec", "mauris", "vestibulum", "ac", "mi", "in", "nunc", "suscipit", "dapibus", "duis", "consectetuer", "ipsum", "et", "pharetra", "sollicitudin", "metus", "turpis", "facilisis", "magna", "vitae", "dictum", "ligula", "nulla", "nec", "mi", "nunc", "ante", "urna", "gravida", "sit", "amet", "congue", "et", "accumsan", "vitae", "magna", "praesent", "luctus", "nullam", "in", "velit", "praesent", "est", "curabitur", "turpis", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "per", "inceptos", "hymenaeos", "cras", "consectetuer", "nibh", "in", "lacinia", "ornare", "turpis", "sem", "tempor", "massa", "sagittis", "feugiat", "mauris", "nibh", "non", "tellus", "phasellus", "mi", "fusce", "enim", "mauris", "ultrices", "turpis", "eu", "adipiscing", "viverra", "justo", "libero", "ullamcorper", "massa", "id", "ultrices", "velit", "est", "quis", "tortor", "quisque", "condimentum", "lacus", "volutpat", "nonummy", "accumsan", "est", "nunc", "imperdiet", "magna", "vulputate", "aliquet", "nisi", "risus", "at", "est", "aliquam", "imperdiet", "gravida", "tortor", "praesent", "interdum", "accumsan", "ante", "vivamus", "est", "ligula", "consequat", "sed", "pulvinar", "eu", "consequat", "vitae", "eros", "nulla", "elit", "nunc", "congue", "eget", "scelerisque", "a", "tempor", "ac", "nisi", "morbi", "facilisis", "pellentesque", "habitant", "morbi", "tristique", "senectus", "et", "netus", "et", "malesuada", "fames", "ac", "turpis", "egestas", "in", "hac", "habitasse", "platea", "dictumst", "suspendisse", "vel", "lorem", "ut", "ligula", "tempor", "consequat", "quisque", "consectetuer", "nisl", "eget", "elit", "proin", "quis", "mauris", "ac", "orci", "accumsan", "suscipit", "sed", "ipsum", "sed", "vel", "libero", "nec", "elit", "feugiat", "blandit", "vestibulum", "purus", "nulla", "accumsan", "et", "volutpat", "at", "pellentesque", "vel", "urna", "suspendisse", "nonummy", "aliquam", "pulvinar", "libero", "donec", "vulputate", "orci", "ornare", "bibendum", "condimentum", "lorem", "elit", "dignissim", "sapien", "ut", "aliquam", "nibh", "augue", "in", "turpis", "phasellus", "ac", "eros", "praesent", "luctus", "lorem", "a", "mollis", "lacinia", "leo", "turpis", "commodo", "sem", "in", "lacinia", "mi", "quam", "et", "quam", "curabitur", "a", "libero", "vel", "tellus", "mattis", "imperdiet", "in", "congue", "neque", "ut", "scelerisque", "bibendum", "libero", "lacus", "ullamcorper", "sapien", "quis", "aliquet", "massa", "velit", "vel", "orci", "fusce", "in", "nulla", "quis", "est", "cursus", "gravida", "in", "nibh", "lorem", "ipsum", "dolor", "sit", "amet", "consectetuer", "adipiscing", "elit", "integer", "fermentum", "pretium", "massa", "morbi", "feugiat", "iaculis", "nunc", "aenean", "aliquam", "pretium", "orci", "cum", "sociis", "natoque", "penatibus", "et", "magnis", "dis", "parturient", "montes", "nascetur", "ridiculus", "mus", "vivamus", "quis", "tellus", "vel", "quam", "varius", "bibendum", "fusce", "est", "metus", "feugiat", "at", "porttitor", "et", "cursus", "quis", "pede", "nam", "ut", "augue", "nulla", "posuere", "phasellus", "at", "dolor", "a", "enim", "cursus", "vestibulum", "duis", "id", "nisi", "duis", "semper", "tellus", "ac", "nulla", "vestibulum", "scelerisque", "lobortis", "dolor", "aenean", "a", "felis", "aliquam", "erat", "volutpat", "donec", "a", "magna", "vitae", "pede", "sagittis", "lacinia", "cras", "vestibulum", "diam", "ut", "arcu", "mauris", "a", "nunc", "duis", "sollicitudin", "erat", "sit", "amet", "turpis", "proin", "at", "libero", "eu", "diam", "lobortis", "fermentum", "nunc", "lorem", "turpis", "imperdiet", "id", "gravida", "eget", "aliquet", "sed", "purus", "ut", "vehicula", "laoreet", "ante", "mauris", "eu", "nunc", "sed", "sit", "amet", "elit", "nec", "ipsum", "aliquam", "egestas", "donec", "non", "nibh", "cras", "sodales", "pretium", "massa", "praesent", "hendrerit", "est", "et", "risus", "vivamus", "eget", "pede", "curabitur", "tristique", "scelerisque", "dui", "nullam", "ullamcorper", "vivamus", "venenatis", "velit", "eget", "enim", "nunc", "eu", "nunc", "eget", "felis", "malesuada", "fermentum", "quisque", "magna", "mauris", "ligula", "felis", "luctus", "a", "aliquet", "nec", "vulputate", "eget", "magna", "quisque", "placerat", "diam", "sed", "arcu", "praesent", "sollicitudin", "aliquam", "non", "sapien", "quisque", "id", "augue", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "per", "inceptos", "hymenaeos", "etiam", "lacus", "lectus", "mollis", "quis", "mattis", "nec", "commodo", "facilisis", "nibh", "sed", "sodales", "sapien", "ac", "ante", "duis", "eget", "lectus", "in", "nibh", "lacinia", "auctor", "fusce", "interdum", "lectus", "non", "dui", "integer", "accumsan", "quisque", "quam", "curabitur", "scelerisque", "imperdiet", "nisl", "suspendisse", "potenti", "nam", "massa", "leo", "iaculis", "sed", "accumsan", "id", "ultrices", "nec", "velit", "suspendisse", "potenti", "mauris", "bibendum", "turpis", "ac", "viverra", "sollicitudin", "metus", "massa", "interdum", "orci", "non", "imperdiet", "orci", "ante", "at", "ipsum", "etiam", "eget", "magna", "mauris", "at", "tortor", "eu", "lectus", "tempor", "tincidunt", "phasellus", "justo", "purus", "pharetra", "ut", "ultricies", "nec", "consequat", "vel", "nisi", "fusce", "vitae", "velit", "at", "libero", "sollicitudin", "sodales", "aenean", "mi", "libero", "ultrices", "id", "suscipit", "vitae", "dapibus", "eu", "metus", "aenean", "vestibulum", "nibh", "ac", "massa", "vivamus", "vestibulum", "libero", "vitae", "purus", "in", "hac", "habitasse", "platea", "dictumst", "curabitur", "blandit", "nunc", "non", "arcu", "ut", "nec", "nibh", "morbi", "quis", "leo", "vel", "magna", "commodo", "rhoncus", "donec", "congue", "leo", "eu", "lacus", "pellentesque", "at", "erat", "id", "mi", "consequat", "congue", "praesent", "a", "nisl", "ut", "diam", "interdum", "molestie", "fusce", "suscipit", "rhoncus", "sem", "donec", "pretium", "aliquam", "molestie", "vivamus", "et", "justo", "at", "augue", "aliquet", "dapibus", "pellentesque", "felis", "morbi", "semper", "in", "venenatis", "imperdiet", "neque", "donec", "auctor", "molestie", "augue", "nulla", "id", "arcu", "sit", "amet", "dui", "lacinia", "convallis", "proin", "tincidunt", "proin", "a", "ante", "nunc", "imperdiet", "augue", "nullam", "sit", "amet", "arcu", "quisque", "laoreet", "viverra", "felis", "lorem", "ipsum", "dolor", "sit", "amet", "consectetuer", "adipiscing", "elit", "in", "hac", "habitasse", "platea", "dictumst", "pellentesque", "habitant", "morbi", "tristique", "senectus", "et", "netus", "et", "malesuada", "fames", "ac", "turpis", "egestas", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "per", "inceptos", "hymenaeos", "nullam", "nibh", "sapien", "volutpat", "ut", "placerat", "quis", "ornare", "at", "lorem", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "per", "inceptos", "hymenaeos", "morbi", "dictum", "massa", "id", "libero", "ut", "neque", "phasellus", "tincidunt", "nibh", "ut", "tincidunt", "lacinia", "lacus", "nulla", "aliquam", "mi", "a", "interdum", "dui", "augue", "non", "pede", "duis", "nunc", "magna", "vulputate", "a", "porta", "at", "tincidunt", "a", "nulla", "praesent", "facilisis", "suspendisse", "sodales", "feugiat", "purus", "cras", "et", "justo", "a", "mauris", "mollis", "imperdiet", "morbi", "erat", "mi", "ultrices", "eget", "aliquam", "elementum", "iaculis", "id", "velit", "in", "scelerisque", "enim", "sit", "amet", "turpis", "sed", "aliquam", "odio", "nonummy", "ullamcorper", "mollis", "lacus", "nibh", "tempor", "dolor", "sit", "amet", "varius", "sem", "neque", "ac", "dui", "nunc", "et", "est", "eu", "massa", "eleifend", "mollis", "mauris", "aliquet", "orci", "quis", "tellus", "ut", "mattis", "praesent", "mollis", "consectetuer", "quam", "nulla", "nulla", "nunc", "accumsan", "nunc", "sit", "amet", "scelerisque", "porttitor", "nibh", "pede", "lacinia", "justo", "tristique", "mattis", "purus", "eros", "non", "velit", "aenean", "sagittis", "commodo", "erat", "aliquam", "id", "lacus", "morbi", "vulputate", "vestibulum", "elit"]
    
    /**
     *  Generates a random UUID/GUID string.
     *
     *  @param includeHyphens Whether hyphens should be included.
     *
     *  @return The random UUID string.
     */
    public class func uuidString(withHyphens includeHyphens: Bool) -> String {
        
        var s = NSUUID().uuidString
        s = s.lowercased()
        
        if !includeHyphens {
            s = s.replacingOccurrences(of: "-", with: "")
        }
        
        return s
    }
    
    /**
     *  Generates a random unsigned integer within the given range.
     *
     *  @param minimumValue The minimum value of the range.
     *  @param maximumValue The maximum value of the range.
     *
     *  @return The random unsigned integer value.
     */
    public class func unsignedInteger(withMinimumValue minimumValue: UInt32, maximumValue: UInt32) -> UInt32 {
        
        if maximumValue == UINT32_MAX && minimumValue == 0 {
            return arc4random()
        }
        else {
            var upperbound = maximumValue
            upperbound = upperbound + 1
            upperbound = upperbound - minimumValue
            let randomValue = arc4random_uniform(upperbound)
            return minimumValue + randomValue
        }
    }
    
    /**
     *  Generates a random signed integer within the given range.
     *
     *  @param minimumValue The minimum value of the range.
     *  @param maximumValue The maximum value of the range.
     *
     *  @return The random signed integer value.
     */
    public class func integer(withMinimumValue minimumValue: Int, maximumValue: Int) -> Int {
        return Int.random(in: minimumValue...maximumValue)
    }
    
    /**
     *  Generates a random `double` value within the given range.
     *
     *  @param minimumValue The minimum value of the range.
     *  @param maximumValue The maximum value of the range.
     *
     *  @return The random `double` value.
     */
    public class func double(withMinimumValue minimumValue: Double, maximumValue: Double) -> Double {
        return Double.random(in: minimumValue...maximumValue)
    }
    
    /**
     *  Generates a random boolean value.
     */
    public class func boolean() -> Bool {
        return Bool.random()
    }
    
    /**
     *  Generates a random lorum ipsum string with the given word count.
     *
     *  @param wordCount The number of words to include in the string.
     *
     *  @return The random lorum ipsum string.
     */
    public class func lorumIpsum(withWordCount wordCount: Int) -> String {
        var selectedWords = [String]()
        
        for _ in 0..<wordCount {
            selectedWords.append(self.words.randomElement()!)
        }
        
        return selectedWords.joined(separator: " ")
    }
}


