#事前準備
sudo apt update
sudo apt upgrade

#開発ツールのインストール
sudo apt install git python3 python3-pip gcc build-essential curl pkg-config libudev-dev libtinfo5
sudo apt install llvm-dev libclang-dev clang

#rustのインストール
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

#rust toolchainのインストール
rustup toolchain install nightly
rustup component add rust-src --toolchain nightly-aarch64-unknown-linux-gnu
rustup default nightly-aarch64-unknown-linux-gnu

#関連ツールのインストール
cargo install ldproxy

#ESP開発環境のインストール
cargo install cargo-espflash
cargo install espup
espup install
sudo ldconfig
cargo install cargo-generate
 
#PATHの設定
echo '. "$HOME/.cargo/env"' >> $HOME/.bashrc
cat $HOME/export-esp.sh >> $HOME/.bashrc
