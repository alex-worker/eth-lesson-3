const {upgrade} = require('./utils')

const contractName = "GoldenCatTokenV2"
const PROXY = "0x5A9468e3796fF9B5a27994767A2dE58eAB121045";

upgrade(contractName, PROXY)
