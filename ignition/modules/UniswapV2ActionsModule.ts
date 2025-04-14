import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const UniswapV2ActionsModule = buildModule("UniswapV2ActionsModule", (m) => {
  const routerV2 = m.getParameter("routerV2");

  const lpAction = m.contract("UniswapV2LPActions", [routerV2]);

  const swapAction = m.contract("UniswapV2SwapActions", [routerV2]);

  return {
    lpAction,
    swapAction,
  };
});

export default UniswapV2ActionsModule;
