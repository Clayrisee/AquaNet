git clone https://github.com/nodefluxio/vortex.git
cd vortex && pip install --ignore-installed --timeout=10000 ./src/runtime[onnxruntime]
cd ..

pip install -r requirements.txt

mkdir model
cd model
gdown 1JWxq3tXz5ZFUwRUAG-cwwRUtHVz9uHw7

mkdir uploads
mkdir results
