sudo apt-get update
sudo apt-get install -y build-essential python3-dev make cmake
git clone https://github.com/IllinoisGraphBenchmark/IGB_testing.git
git clone --recurse-submodules https://github.com/dmlc/dgl.git
cd dgl
mkdir build
cd build
cmake .. -DUSE_AVX=OFF 
make -j4 
cd ../python
python setup.py install
