
const LENA = artifacts.require("Lena");

module.exports = async function(_deployer) {
  await _deployer.deploy(LENA);
  // Use deployer to state migration tasks.
};
