#!/bin/bash
#
# submission.sh: The script to be launched in the Docker image.
#
# Usage: submission.sh <image_basename_file> <image_dir> <output_file>
#   image_basename_file: Path to file containing image file basenames (e.g. "123.jpg"), one per line
#   image_dir: Path to directory containing image files (e.g. "/tmp/image_dir")
#   output_file: Path to file where image captions should be written, one per line
#
# Sample usage:
#   submission.sh images.txt image_dir captions.txt

IMAGE_BASENAME_FILE=$1
IMAGE_DIR=$2
OUTPUT_FILE=$3

for image in $(cat $IMAGE_BASENAME_FILE); do
  # Python code prints the generated caption to stdout.
  python /conceptual-captions/generate_caption.py image_path=$IMAGE_DIR/$image >> $OUTPUT_FILE
done

