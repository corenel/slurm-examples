# Basic MNIST Example

- Refer to [the official PyTorch exmaple](https://github.com/pytorch/examples/blob/master/mnist/README.md)
- Add `tensorboardX` support for visualization
- Add slurm support

## Usage

1. Ensure you've installed `miniconda3` on login node

2. Create a new conda environment and install the required packages:

   ```bash
   $ conda create -n py37 python=3.7
   $ conda install pytorch torchvision cudatoolkit=10.2 -c pytorch
   $ pip install -r requirements.txt
   ```

3. Modify `run.slurm`:

   - path to working directory
   - name of conda environment

4. Submit the job:

   ```bash
   $ sbatch run.slurm
   ```

   