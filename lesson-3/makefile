include .env
export $(shell sed 's/=.*//' .env)

none:
	echo "none work"

test1:
	node scripts/test1.js

deploy1:
	npx hardhat run --network rinkeby scripts/deploy-v1.js --show-stack-traces

verify:
	npx hardhat verify --contract contracts/GoldenCatTokenV4.sol:GoldenCatTokenV4 --network rinkeby 0x5A9468e3796fF9B5a27994767A2dE58eAB121045


deploy2:
	npx hardhat run --network rinkeby scripts/deploy-v2.js --show-stack-traces


deploy3:
	npx hardhat run --network rinkeby scripts/deploy-v3.js --show-stack-traces

deploy4:
	npx hardhat run --network rinkeby scripts/deploy-v4.js --show-stack-traces
