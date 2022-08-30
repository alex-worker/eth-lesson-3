const {upgrade} = require('./utils')

const contractName = "GoldenCatTokenV4"
const PROXY = process.env.PROXY

upgrade(contractName, PROXY)
