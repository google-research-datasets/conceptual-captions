# Conceptual Captions Dataset

Conceptual Captions is a dataset containing (image-URL, caption) pairs designed
for the training and evaluation of machine learned image captioning systems.

## Downloads
See <http://ai.google.com/research/ConceptualCaptions> for details.

## Motivation

Automatic image captioning is the task of producing a natural-language
utterance (usually a sentence) that correctly reflects the visual content of an
image. Up to this point, the resource most used for this task was the
[MS-COCO dataset](http://cocodataset.org), containing around 120,000
images and 5-way image-caption annotations (produced by paid annotators).

Google's Conceptual Captions dataset has more than 3 million images, paired
with natural-language captions. In contrast with the curated style of the
MS-COCO images, Conceptual Captions images and their raw descriptions are
harvested from the web, and therefore represent a wider variety of styles. The
raw descriptions are harvested from the Alt-text HTML attribute associated with
web images. We developed an automatic pipeline that extracts, filters, and
transforms candidate image/caption pairs, with the goal of achieving a balance
of cleanliness, informativeness, fluency, and learnability of the resulting
captions.

More details are available in this paper (please cite the paper if you use or discuss this dataset in your work):

<div class="highlight highlight-source-shell"><pre>
@inproceedings{sharma2018conceptual,
  title = {Conceptual Captions: A Cleaned, Hypernymed, Image Alt-text Dataset For Automatic Image Captioning},
  author = {Sharma, Piyush and Ding, Nan and Goodman, Sebastian and Soricut, Radu},
  booktitle = {Proceedings of ACL},
  year = {2018},
}
</pre></div>
Additionally, we provide machine-generated labels for a subset of 2.0M images from the Conceptual Captions training set.
Please cite this paper if you use the image labels in your work.

<div class="highlight highlight-source-shell"><pre>
@article{ng2020understanding,
  title={Understanding Guided Image Captioning Performance across Domains},
  author={Edwin G. Ng and Bo Pang and Piyush Sharma and Radu Soricut},
  journal={arXiv preprint arXiv:2012.02339},
  year={2020}
}
</pre></div>

## Dataset Description

Conceptual Captions dataset release contains two splits: train (~3.3M examples) and validation (~16K examples).
See Table 1 below for more details.

<p align='center'>Table 1: Dataset stats.</p>

<table>
  <tr>
    <td colspan="3"></td>
    <td colspan="3"><center><b>Tokens per Caption</b></center></td>
  </tr>
  <tr>
    <td><b>Split</b></td>
    <td><b>Examples</b></td>
    <td><b>Uniqe Tokens</b></td>
    <td><b>Mean</b></td>
    <td><b>StdDev</b></td>
    <td><b>Median</b></td>
  </tr>
  <tr>
    <td>Train</td>
    <td>3,318,333</td>
    <td>51,201</td>
    <td>10.3</td>
    <td>4.5</td>
    <td>9.0</td>
  </tr>
  <tr>
    <td>Valid</td>
    <td>15,840</td>
    <td>10,900</td>
    <td>10.4</td>
    <td>4.7</td>
    <td>9.0</td>
  </tr>
  <tr bgcolor="#808080">
    <td>Test (Hidden)</td>
    <td>12,559</td>
    <td>9,645</td>
    <td>10.2</td>
    <td>4.6</td>
    <td>9.0</td>
  </tr>
</table>


## Hidden Test set

We are not releasing the official test split (~12.5K examples).
Instead, we are hosting a competition (see <http://ai.google.com/research/ConceptualCaptions>) dedicated to supporting submissions and evaluations of model outputs on this blind test set.

We strongly believe that this setup has several advantages: a) it allows the evaluation to be done using an unbiased, large number of images b) it keeps the test completely blind and eliminate suspicions of fitting to the test, cheating, etc. c) it overall provides a clean setup for advancing the SoTA on this task, including reporting reproducible results for paper publications, etc.


## Image Labels

The image labels are obtained using the Google Cloud Vision API (<https://cloud.google.com/vision>). Each image label has a machine-generated identifier (MID) corresponding to the label's Google Knowledge Graph entry and a confidence score for its presence in the image.
These labels have been obtained running the same model and are presented in a similar fashion with the image labels made available for the T2 Guiding dataset available at https://github.com/google-research-datasets/T2-Guiding.

## Data Format for Conceptual Captions

The Conceptual Captions training and validation sets are provided as TSV (tab-separated values) text files with the following columns:

<p align='center'>Table 2: Columns in Train/Validation TSV files.</p>

| Column   | Description                                                                      |
| -------- | -------------------------------------------------------------------------------- |
| 1        | Caption. The text has been tokenized and lowercased.                             |
| 2        | Image URL                                                                        |

## Data Format for Image Labels

The image labels for a 2.0M subset of the training set are provided as TSV (tab-separated values) text files with the following columns:

<p align='center'>Table 3: Columns in Image Labels TSV files.</p>

| Column   | Description                                                                      |
| -------- | -------------------------------------------------------------------------------- |
| 1        | Caption. The text has been tokenized and lowercased.                             |
| 2        | Image URL                                                                        |
| 3        | Image labels. Comma separated list in descending order of confidence.            |
| 4        | MIDs. Comma separated list corresponding to the image labels list.               |
| 5        | Confidence scores. Comma separated list corresponding to the image labels list.  |


## Contact us

If you have a technical question regarding the dataset, code or publication, please create an issue in this repository.
This is the fastest way to reach us.

If you would like to share feedback or report concerns, please email us at conceptual-captions@google.com
