/// 스택 키포인트
/// - LIFO(Last In Firt Out) 자료구조
/// - 매우 단순하지만 많은 문제들의 핵심 자료구조
/// - push/pop이 필수 기능
public struct Stack<Element> {
    
    private var storage: [Element] = []
    
    public init() { }
    
    /// Array로 Stack 초기화
    public init(_ elements: [Element]) {
        storage = elements
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult // 함수의 return이 사용되지 않을때 뜨는 Xcode warning을 안뜨게 한다. 즉, 이 결과를 사용 하던 말던 warning 띄우지마! 의미
    public mutating func pop() -> Element? {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        storage.last
    }
    
    public var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    // print로 출력될 내용
    public var description: String {
        """
        ----top----
        \(storage.map {"\($0)"}.reversed().joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    /// Array Literal 로 스택 초기화 (Array 타입 생성없이 "[1,...]" 같은 대괄호로 묶는 것만으로도 초기화
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
