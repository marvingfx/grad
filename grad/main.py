from os import makedirs

from PIL import Image

from grad import ROOT

output_folder = f"{ROOT}/output"

if __name__ == "__main__":
    image = Image.new("RGB", size=(1920, 1080), color=(0, 255, 0))
    makedirs(output_folder, exist_ok=True)
    image.save(f"{output_folder}/test_image.png")
