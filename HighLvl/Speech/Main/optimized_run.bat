@echo off
echo Running with optimized streaming and multi-response...

REM Set environment variables for improved performance
set OMP_NUM_THREADS=4
set PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:128
set TOKENIZERS_PARALLELISM=true

REM Launch with optimized settings
python Main_Combine.py ^
  --whisper-model=base ^
  --perf-log ^
  --skip-reasoning ^
  --parallel ^
  --cache ^
  --max-tts=100 ^
  --tts-workers=2 ^
  --timeout=15 ^
  --multi-response ^
  --filler-response

echo System terminated.
