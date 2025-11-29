from PIL import Image
import sys
import os
def get_unique_filename(directory, base_name, ext):
    i = 1
    while True:
        new_name = f"{base_name}-{i}{ext}"
        new_path = os.path.join(directory, new_name)
        if not os.path.exists(new_path):
            return new_path
        i += 1

def trim_transparency(image_path):
    try:
        image = Image.open(image_path)
        if image.mode != 'RGBA':
            image = image.convert('RGBA')
        
        bbox = image.getbbox()
        if bbox:
            trimmed = image.crop(bbox)

            dir_name, file_name = os.path.split(image_path)
            base_name, ext = os.path.splitext(file_name)
            new_path = get_unique_filename(dir_name, base_name, ext)

            trimmed.save(new_path)
    except Exception:
        pass

if __name__ == '__main__':
    for path in sys.argv[1:]:
        trim_transparency(path)
