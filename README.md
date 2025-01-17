# EMU: Efficient Episodic Memory Utilization of Cooperative Multi-agent Reinforcement Learning

# Note
This codebase accompanies the paper submission "**Efficient Episodic Memory Utilization of Cooperative Multi-agent Reinforcement Learning (EMU)**" and is based on [GRF](https://github.com/google-research/football), [PyMARL](https://github.com/oxwhirl/pymarl) and [SMAC](https://github.com/oxwhirl/smac) which are open-sourced.
The paper is accepted by [ICLR2024](https://iclr.cc/Conferences/2024/) and now available in [OpenReview](https://openreview.net/forum?id=LjivA1SLZ6) and [arXiv](https://arxiv.org/abs/2403.01112).

PyMARL is [WhiRL](http://whirl.cs.ox.ac.uk)'s framework for deep multi-agent reinforcement learning and our code includes implementations of the following algorithms:
- [**QPLEX**: Duplex Dueling Multi-Agent Q-Learning](https://arxiv.org/pdf/2008.01062)
- [**EMC**: Episodic Multi-agent Reinforcement Learning with Curiosity-driven Exploration](https://arxiv.org/abs/2111.11032)
- [**CDS**: Celebrating Diversity in Shared Multi-Agent Reinforcement Learning](https://arxiv.org/abs/2106.02195)

## New Simple Installation instructions

Installation from 'EMU_release_pymarl':

```shell
conda create -n emu python=3.8 -y
conda activate emu

bash install_dependecies.sh
```

Manually install SMAC

```shell
pip install -e ../EMU_smac_env/
```

If required:

```shell
pip install protobuf==3.19.6
```

Set up StarCraft II and SMAC:
```shell
bash install_sc2.sh
bash install_gfootball.sh
```

If SC2PATH is not recognized, modify the line 169 in "/home/diego-randolp/anaconda3/envs/emu/lib/python3.7/site-packages/pysc2/run_configs/platforms.py" to "base_dir = /home/diego-randolp/Code/DeepLearning/EMU/EMU_release_pymarl/3rdparty/StarCraftII"

This will download SC2 into the 3rdparty folder and copy the maps necessary to run over.

# Run an experiment

**Note: Please use the updated configuration file for experiments. We have corrected some errors in the previously uploaded configurations.**
To train EMU(QPLEX) on SC2 setting tasks, run the following command:
```
python3 src/main.py --config=EMU_sc2 --env-config=sc2 with env_args.map_name=5m_vs_6m
```
For EMU(CDS), please change config file to EMU_sc2_cds.

To train EMU(QPLEX) on SC2 setting tasks, run the following command:
```
python3 src/main.py --config=EMU_grf --env-config=academy_3_vs_1_with_keeper
```
For EMU(CDS), please change config file to EMU_grf_cds. 

# Publication
If you find this repository useful, please cite our paper:
```
@inproceedings{na2024efficient,
  title={Efficient Episodic Memory Utilization of Cooperative Multi-Agent Reinforcement Learning},
  author={Na, Hyungho and Seo, Yunkyeong and Moon, Il-chul},
  journal={arXiv preprint arXiv:2403.01112},
  year={2024}
}
```
