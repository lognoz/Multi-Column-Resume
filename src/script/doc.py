#!/usr/bin/env python

"""
Copyright (c) Marc-Antoine Loignon
See the file 'LICENSE' for copying permission
"""

import fileinput
from time import time
from PIL import Image, ImageOps
from pdf2image import convert_from_path


def edit_file(filename):
    """
    This function is used to edit file.
    """
    with fileinput.input(filename, inplace=1) as f:
        for line in f:
            yield line.rstrip('\n')

def convert_pdf_to_png():
    """
    This function convert pdf to a png image.
    """
    pages = convert_from_path("output/resume.pdf", 90)

    for page in pages:
        page.save("output/resume.png", "PNG")

def create_mockup(image, background, timestamp):
    """
    This function create a mockup image.
    """
    width, height = image.size
    margin = round(height * 0.04)
    target = Image.new('RGB', (
        (width + (margin * 2)),
        (height + (margin * 2))
    ))

    target.paste(background)
    target.paste(image, (margin, margin))
    target.save("output/resume." + str(timestamp) + ".png", quality=100)

def change_documentation(timestamp):
    """
    This function is used to change mockup in documentation.
    """
    for line in edit_file("README.md"):
        if line.startswith("![Curriculum vitae example]"):
            print("![Curriculum vitae example](./output/resume." + str(timestamp) + ".png)")
        else:
            print(line)

def main():
    """
    This function is the main executor.
    """
    convert_pdf_to_png()
    image = Image.open("output/resume.png")
    background = Image.open("asset/background.jpg")
    timestamp = time()
    create_mockup(image, background, timestamp)
    change_documentation(timestamp)

if __name__ == '__main__':
    main()
