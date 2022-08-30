const {upgrade} = require('./utils')

const contractName = "GoldenCatTokenV3"
const PROXY = process.env.PROXY

upgrade(contractName, PROXY)
