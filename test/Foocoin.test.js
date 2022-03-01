const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Foocoin", function() {

    it("Should return the owner of the contract 1 million tokens ", async function() {

        const Foocoin = await hre.ethers.getContractFactory("Foocoin");

        const foocoin = await Foocoin.deploy(1000000);

        const [owner] = await ethers.getSigners();

        const ownerBalance = await foocoin.balanceOf(owner.address);
        expect(180000000).to.equal(ownerBalance);


    });
});