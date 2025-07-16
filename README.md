# GRETSI 2025 Artefacts

This repository is linked to the following publication :

*Q. Vacher, S. Kelly, A. Naqvi, N. Beuve, T. Djavaherpour, M. Dardaillon, K. Desnos. MAPLE: Multi-Action Programs through Linear Evolution for Continuous Multi-Action Reinforcement Learning*

This repository contain:
* The code and script to reproduce the results.
* The experimental results to generate the figures and tables in the paper.


## Execution of code

To execute the code, you will need first to download the repository.
Then launch the script to install the libraries of MuJoCo and Gegelati and compile the project.

```
git clone --recurse-submodules  https://github.com/gegelati/GECCO2025.git
cd GECCO2025
sudo scriptLibraries.sh
```

Now you can build the projet.

```
cd gegelati-apps/mujoco/ && mkdir bin && cd bin
cmake -DCMAKE_BUILD_TYPE=Release .. && cmake --build . -j 
cd ../..
```

Two nootebooks are available:
 - *runTraining.ipynb* To launch trainings with either MAPLE, MATPG or TPG on any MuJoCo environment
 - *results.ipynb* To look or generate the different results in the paper
For *runTraining.ipynb*, or for the last section of *results.ipynb*, be sure to have the same OS for the compiler of the project and for the notebook runner.


## Contenu de répertoire
```
├─ GECCO2025                              # Dossier racine.
│  │                                                                       
│  │                                           
│  ├─ exported_results       
│  │
│  ├─ gegelati-apps/mujoco                          
│  │   
│  ├─ logs                                           # Experimental data.
│  │  │                                        
│  │  │
│  │  ├─ MAPLE
│  │  │  │  
│  │  │  ├─ ant
│  │  │  │  │
│  │  │  │  ├─ codeGen
│  │  │  │  │
│  │  │  │  ├─ bestPolicyStats.0.p0.ant.md
│  │  │  │  │
│  │  │  │  ├─ exported_params.ant.p0.json
│  │  │  │  │
│  │  │  │  ├─ out_best_stats.0.p0.ant.md
│  │  │  │  │
│  │  │  │  ├─ out_best.0.p0.ant.dot
│  │  │  │  │
│  │  │  │  ├─ stateAndActionData_out_best.0.p0.42.csv
│  │  │  │  │
│  │  │  ├─ half_cheetah
│  │  │  │
│  │  │  ├─ hopper
│  │  │  │
│  │  │  ├─ humanoid
│  │  │  │
│  │  │  ├─ inverted_double_pendulum
│  │  │  │
│  │  │  ├─ walker2d
│  │  │  │
│  │  ├─ MATPG
│  │  │  
│  │  ├─ TPG
│  │  │                                  
│  │  │   
│  ├─ videoResults        
│  │
│  ├─ README.md           
|  |  
│  ├─ results.ipynb           
|  |  
│  ├─ mann_whitney_maple.csv        
│  │  
│  ├─ scriptLibraries.sh
│  │  
│  ├─ sumup_rl_results.csv
│  │  
```

