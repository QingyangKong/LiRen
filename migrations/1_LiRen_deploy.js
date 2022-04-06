const LiRenContract = artifacts.require("LiRenContract");

module.exports = function (deployer) {
  deployer.deploy(LiRenContract);
};
