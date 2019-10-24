###########################################
#Explanation of the generation of the data#
###########################################

I) Quick generation of data
_____________________________

If you want to generate X files run the commande: ./data_generation.sh X
Alternatively you also can directly create X GW using : python3 data_generation_selfsuffisant.py --nbr_file X (this method is not good if you want to generate a big amount of template)

The data is store under different format : 
numpy : which is th GW, with th correspondant chirp masse and spin
.txt : where all the carateristique of the GW is write
.png :  graph of the GW (pure GW and whitened GW)

If you want to remove all the GW from the folders numpy txt png you can use the command :
./clean_data.sh




Explaination of data_generation.py 
-----------------------------------

parameter : --nbr_run (default 1) --nbr_file (default 10) --nbr_initial_file(default 0):
python3 data_generation.py --nbr_run 2 --nbr_file 10  --nbr_initial_file 4 (create 10 GW use each of the 2 time (inject in different noise) the first GW is saved in the folder numpy txt png with the name wf_run0_4. The second is saved with the name wf_run0_5, ect

This file does the data processing. It cuts the GW to the last second, genrates the Gaussian noise, injects the GW in the Gaussian noise, does the withning, normalizes.
It saved all the GW (clean and noisy) in different format located in data/pure_GW/ (data/noisy_GW/). 


The numpy files
----------------

Each numpy files contains the following element : [wf, chirp_mass, snr, presenceGW]
wf = the waveform
chirp_mass = chirp masse of the GW
snr = snr of the GW
presence = 1=there is a GW, 0=this is pure noise
