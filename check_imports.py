#!/usr/bin/env python
import os

import matplotlib as mpl
import numpy as np
import seaborn as sns
import sklearn
import torch
import torchvision
import tqdm

import support

assert os.path.exists('data/transcripts.tar.bz2')

print("Okay, you're good to go!")
