git clone https://github.com/nodefluxio/vortex.git
cd vortex && pip install --ignore-installed --timeout=10000 ./src/runtime[onnxruntime]
cd ..

pip install -r requirements.txt

mkdir model
cd model
gdown --id 1-0ayk7j51epkXLfDeAGXyrgQ3mMeLMBP

cd ..

mkdir uploads
mkdir results
