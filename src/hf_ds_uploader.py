# execute the following command to log in: `huggingface-cli login`

from datasets import load_dataset

dataset = load_dataset("imagefolder", data_dir="../notebooks/to_hf/hf_ds/hf_df_x100")
dataset.push_to_hub("thivav/zalando_fashionista_x100")

dataset = load_dataset("imagefolder", data_dir="../notebooks/to_hf/hf_ds/hf_df_x300")
dataset.push_to_hub("thivav/zalando_fashionista_x300")