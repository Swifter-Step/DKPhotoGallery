DKPhotoGallery
=======================

 [![Build Status](https://secure.travis-ci.org/zhangao0086/DKPhotoGallery.svg)](http://travis-ci.org/zhangao0086/DKPhotoGallery) [![Version Status](http://img.shields.io/cocoapods/v/DKPhotoGallery.png)][docsLink] [![license MIT](https://img.shields.io/cocoapods/l/DKPhotoGallery.svg?style=flat)][mitLink]

### Features

- PNG|JPEG|GIF|PHAsset
- AVPlayer
- Image caching with SDWebImage
- Original image download
- Extract QR Code(Text、URL)
- Localization
- 3D Touch

## Requirements
* iOS 8.0+
* ARC
* Swift 3.2 & 4

## Installation
#### iOS 8 and newer
DKPhotoGallery is available on CocoaPods. Simply add the following line to your podfile:

```ruby
# For latest release in cocoapods
pod 'DKPhotoGallery'
```

## Usage

```swift
let gallery = DKPhotoGallery()
gallery.singleTapMode = .dismiss
gallery.items = self.items
gallery.presentingFromImageView = self.imageView
gallery.presentationIndex = 0

gallery.finishedBlock = { [weak self] dismissIndex in
    if dismissIndex == 0 {
        return self?.imageView
    } else {
        return nil
    }
}

self.present(photoGallery: gallery)

```

## DKPhotoGalleryItem

Create a DKPhotoGalleryItem with a UIImage or a URL or a PHAsset.

```swift
@objc
open class DKPhotoGalleryItem: NSObject {
    
    /// The image to be set initially, until the image request finishes.
    open var thumbnail: UIImage?
    
    open var image: UIImage?
    open var imageURL: URL?
    
    open var videoURL: URL?
    
    /**
     DKPhotoGallery will automatically decide whether to create ImagePreview or PlayerPreview via mediaType of the asset.
     
     See more: DKPhotoPreviewFactory.swift
     */
    open var asset: PHAsset?
    open var assetLocalIdentifier: String?
    
    /**
     Used for some optional features.
     
     For ImagePreview, you can enable the original image download feature with a key named DKPhotoGalleryItemExtraInfoKeyRemoteImageOriginalURL.
     */
    open var extraInfo: [String: Any]?
}
```

## Extract QR Code

## Enable the original image download feature

## Localization
The default supported languages:

- en.lproj
- zh-Hans.lproj

You can also add a hook to return your own localized string:

```swift
DKPhotoGalleryResource.customLocalizationBlock = { title in
    if title == "preview.image.longPress.cancel" {
        return "This is a test."
    } else {
        return nil
    }
}
```

## License
DKPhotoGallery is released under the MIT license. See LICENSE for details.

[docsLink]:http://cocoadocs.org/docsets/DKPhotoGallery
[mitLink]:http://opensource.org/licenses/MIT
