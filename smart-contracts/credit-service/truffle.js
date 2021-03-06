module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*", // Match any network id
      gas: 4700000
    },
    net42: {
      host: "localhost",
      port: 8545,
      network_id: 42,
      gas: 500000
    },
    ropsten: {
      network_id: 3,
      host: "localhost",
      port: 8545,
      gas: 2900000
      }    
  }
};
