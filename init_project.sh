git clone https://github.com/nodefluxio/vortex.git
cd vortex && pip install --ignore-installed --timeout=10000 ./src/runtime[onnxruntime]
cd ..

pip install -r requirements.txt

mkdir model
cd model
gdown --id 1JWxq3tXz5ZFUwRUAG-cwwRUtHVz9uHw7

cd ..

mkdir uploads
mkdir results
