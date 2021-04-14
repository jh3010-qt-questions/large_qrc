import os
import hashlib
import shutil
import glob

for filepath in glob.glob( 'image_assets/*.png' ):
    os.remove( filepath )

imageCount = 2000
imageName  = 'original_image_png'

for x in range( imageCount ):

    hashName = hashlib.sha1( f"{imageName}{x}".encode( 'utf8' ) ).hexdigest()
    hashName = f"{hashName}.png"

    shutil.copyfile( imageName, f"image_assets/{hashName}" )