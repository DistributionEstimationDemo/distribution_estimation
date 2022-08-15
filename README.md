# README

Thanks for your attention. The following instructions can help you reproduce the experiments.

## Platform

Our experiments are conducted on a platform with NVIDIA GeForce RTX 3090.

## Environment

```
conda env create -f environment.yaml
```

## Running

```
cd code
bash train.sh
```

The detailed configurations can be found in the ```train.sh```. As the Bert model is too large, you can download the Bert model from [Hugging Face(```bert-base-uncased```)](https://huggingface.co/bert-base-uncased).

## Files Definition

- ```data``` : contains eight public datasets: four intent datasets (Banking77, HWU64, Liu57, Clinic150) and four news datasets (HuffPost, Amazon, Reuters, 20News). Each dataset is re-splited into five different settings (different training, validation and testing set).

- ```code``` : contains python files of our framework

    - ```data_loader.py``` : used to sample each episode data
    - ```encoder.py``` : model file
    - ```losses.py``` : contains loss function
    - ```parser_util.py``` : parse parameters
    - ```train.py``` : train the model
    - ```train.sh``` : parameters used to train models
   
