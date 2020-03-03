#!/usr/bin/env python

"""
Copyright (c) Marc-Antoine Loignon
See the file 'LICENSE' for copying permission
"""

from PIL import Image, ImageOps
from pdf2image import convert_from_path


def convert_pdf_to_png():
    """
    This function convert pdf to a png image.
    """
    pages = convert_from_path("output/resume.pdf", 90)

    for page in pages:
        page.save("output/resume.png", "PNG")

def create_mockup(image, background):
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
    target.save("output/resume.png", quality=100)

def main():
    """
    This function is the main executor.
    """
    convert_pdf_to_png()
    image = Image.open("output/resume.png")
    background = Image.open("asset/background.jpg")
    create_mockup(image, background)

if __name__ == '__main__':
    main()
