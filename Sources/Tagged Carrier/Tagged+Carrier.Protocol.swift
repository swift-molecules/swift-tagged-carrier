public import Carrier
public import Carrier_Protocol
public import Tagged

extension Tagged: @retroactive Carrier.`Protocol`
where Tag: ~Copyable & ~Escapable, Underlying: ~Copyable & ~Escapable {

    public typealias Domain = Tag

    public typealias Underlying = Underlying
}
