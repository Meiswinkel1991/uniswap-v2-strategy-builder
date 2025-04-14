import hre from "hardhat";
import path from "path";

import UniswapV2ActionsModule from "../ignition/modules/UniswapV2ActionsModule";

async function main() {
  const deployment = await hre.ignition.deploy(UniswapV2ActionsModule, {
    parameters: path.resolve(
      __dirname,
      `../ignition/parameters/parameters-${hre.network.name}.json`
    ),
    displayUi: true,
  });
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
