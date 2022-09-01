# ESFPNet
Official Implementation of "ESFPNet: efficient deep learning architecture for real-time lesion segmentation in autofluorescence bronchoscopic video"

## Global Rank

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/esfpnet-efficient-deep-learning-architecture/medical-image-segmentation-on-cvc-clinicdb)](https://paperswithcode.com/sota/medical-image-segmentation-on-cvc-clinicdb?p=esfpnet-efficient-deep-learning-architecture)

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/esfpnet-efficient-deep-learning-architecture/medical-image-segmentation-on-etis)](https://paperswithcode.com/sota/medical-image-segmentation-on-etis?p=esfpnet-efficient-deep-learning-architecture)

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/esfpnet-efficient-deep-learning-architecture/medical-image-segmentation-on-kvasir-seg)](https://paperswithcode.com/sota/medical-image-segmentation-on-kvasir-seg?p=esfpnet-efficient-deep-learning-architecture)

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/esfpnet-efficient-deep-learning-architecture/medical-image-segmentation-on-cvc-colondb)](https://paperswithcode.com/sota/medical-image-segmentation-on-cvc-colondb?p=esfpnet-efficient-deep-learning-architecture)

## Architecture of ESFPNet

<div align=center><img src="https://github.com/dumyCq/ESFPNet/blob/main/Figures/Network.jpg" width="1000" height="550" alt="Result"/></div>

## Installation & Usage
### Enviroment (Python 3.8)
- Install Pytorch:
```
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
```
- Install image reading and writting library:
```
conda install -c conda-forge imageio
```
- Install image processing library:
```
pip install scikit-image
```
- Install library for parsing and emitting YAML:
```
pip install pyyaml
```
- Install other packages:
```
conda install pillow numpy matplotlib
```
- Install Jupyter-Notebook to run .ipynb file
```
conda install -c anaconda jupyter
```
### Dataset
- Download the training and testing dataset from this link: [Experiment Dataset](https://drive.google.com/drive/folders/1FneOIY5OC0gaIHceBqYXqj5GCdutcLfv?usp=sharing)
- Extract the folders and copy them under "Endoscope-WL" folder
- The training and testing dataset are ordered as follows in "Endoscope-WL" folder:
```
|-- TrainDataset
|   |-- CVC-ClinicDB
|   |   |-- images
|   |   |-- masks
|   |-- Kvasir
|       |-- images
|       |-- masks

|-- TestDataset
|   |-- CVC-300
|   |   |-- images
|   |   |-- masks
|   |-- CVC-ClinicDB
|   |   |-- images
|   |   |-- masks
|   |-- CVC-ColonDB
|   |   |-- images
|   |   |-- masks
|   |-- ETIS-LaribPolypDB
|   |   |-- images
|   |   |-- masks
|   |-- Kvasir
|       |-- images
|       |-- masks
```
- The default dataset paths can be changed in "Configure.yaml"
- To randomly split the CVC-ClincDB or Kvasir dataset, set "if_renew = True" in "ESFPNet_Endoscope_Learning_Ability.ipynb"
- To repeat generate the splitting dataset, previous generated folder shold be detelted first
- To reuse the splitting dataset without generating a new dataset, set "if_renew = False"
### Pretrained model
- Download the pretrained Mixtransformer from this link: [Pretrained Model](https://drive.google.com/drive/folders/1FLtIfDHDaowqyF_HhmORFMlRzCpB94hV?usp=sharing)
- Put the pretrained models under "Pretrained" folder
### Citation
If you think this paper helps, please cite:
```
@article{chang2022esfpnet,
  title={ESFPNet: efficient deep learning architecture for real-time lesion segmentation in autofluorescence bronchoscopic video},
  author={Chang, Qi and Ahmad, Danish and Toth, Jennifer and Bascom, Rebecca and Higgins, William E},
  journal={arXiv preprint arXiv:2207.07759},
  year={2022}
}
```
Since the training of MixTransformer based network requires a good GPU.
One helpful state-of-the-art work compared in this paper without using MixTransformer backbone is [CARANet](https://github.com/AngeLouCN/CaraNet)
If you also think this work helps, please cite:
```
@inproceedings{lou2021caranet,
author = {Ange Lou and Shuyue Guan and Hanseok Ko and Murray H. Loew},
title = {{CaraNet: context axial reverse attention network for segmentation of small medical objects}},
volume = {12032},
booktitle = {Medical Imaging 2022: Image Processing},
organization = {International Society for Optics and Photonics},
publisher = {SPIE},
pages = {81 -- 92},
year = {2022},
doi = {10.1117/12.2611802}}
```
