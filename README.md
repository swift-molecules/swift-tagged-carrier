# Tagged Carrier

`Tagged Carrier` is the narrow integration seam between
[`Tagged`](https://github.com/swift-atoms/swift-tagged) and
[`Carrier`](https://github.com/swift-atoms/swift-carrier).

It makes every `Tagged<Tag, Underlying>` a `Carrier.Protocol` whose domain is
the phantom `Tag` and whose immediate carried value is `Underlying`. Nested
tags remain distinct carrier layers rather than collapsing recursively.

```swift
import Tagged_Carrier

enum User {}

let id = Tagged<User, Int>(42)
let value: Int = id.underlying
```

The Tagged atom owns storage, phantom typing, and tag-preserving transforms.
The Carrier atom owns the capability protocol and standard-library carriers.
This molecule owns only their retroactive conformance. Its test target also
contains local carrier fixtures for collection-shaped integration tests; those
conformances are not exported by the library product.

## Installation

```swift
dependencies: [
    .package(
        url: "https://github.com/swift-molecules/swift-tagged-carrier.git",
        branch: "main"
    )
]
```

```swift
.target(
    name: "App",
    dependencies: [
        .product(name: "Tagged Carrier", package: "swift-tagged-carrier")
    ]
)
```
