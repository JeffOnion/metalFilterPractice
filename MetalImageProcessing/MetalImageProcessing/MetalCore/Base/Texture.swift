
//  MetalPracticeCW
//  Used toturial as coding reference
//

import Foundation
import MetalKit

public class Texture {
    
    public let texture: MTLTexture
    
    public init(texture: MTLTexture) {
        self.texture = texture
    }
    
    public init(pixelFormat: MTLPixelFormat = .bgra8Unorm, width: Int, height: Int, mipmapped: Bool = false) {
        let textureDescriptor = MTLTextureDescriptor.texture2DDescriptor(pixelFormat: pixelFormat,
                                                                         width: width,
                                                                         height: height,
                                                                         mipmapped: mipmapped)
        textureDescriptor.usage = [.renderTarget, .shaderRead, .shaderWrite]
        
        guard let newTexture = sharedContext.device.makeTexture(descriptor: textureDescriptor) else {
            fatalError("Could not create texture of size: (\(width), \(height))")
        }
        
        self.texture = newTexture
    }
}
