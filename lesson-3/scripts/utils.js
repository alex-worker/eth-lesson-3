const {ethers, upgrades} = require("hardhat")

const deploy = async (contractName, params) => {
  const contract = await ethers.getContractFactory(contractName);
  console.log(`Deploying ${contractName}...`);
  const box = await upgrades.deployProxy(contract, params, {
      initializer: "initialize",
  });
  await box.deployed();
  console.log(`${contractName} deployed to:`, box.address);
}

const upgrade = async (contractName, PROXY) => {
  const contract = await ethers.getContractFactory(contractName);
  console.log(`Upgrading ${contractName}...`);
  await upgrades.upgradeProxy(PROXY, contract);
  console.log(`${contractName} upgraded`);
}

module.exports = {
  deploy,
  upgrade
}
