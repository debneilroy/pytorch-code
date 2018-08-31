# pytorch-code
This repository contains code for distributed training in pytorch. It has been largely taken from the official pytorch distributed
training tutorial https://pytorch.org/tutorials/intermediate/dist_tuto.html.

The file mnist_dist.py is used for distributed training on the MNIST dataset. The script file is mnist_dist.sh.

The file alexnet.py trains the AlexNet architecture on the ImageNet dataset. The code has been taken from  https://github.com/pytorch/examples/tree/master/imagenet. The file alexnet_output_1_node.txt contains the output of running the file alexnet.py on one node. It trained for 5 complete epochs.To run the distributed training with MPI backend, check the script file alexnet.sh.
