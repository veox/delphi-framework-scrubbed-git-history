pragma solidity 0.4.11;
import "../Markets/MarketFactory.sol";
import "../Markets/StandardMarket.sol";


/// @title Market factory contract - Allows market contracts' creation
/// @author Delphi - <delphimarkets@gmail.com>
contract StandardMarketFactory is MarketFactory {

    /*
     *  Public functions
     */
    /// @dev Creates a new market contract
    /// @param eventContract Event contract
    /// @param marketMaker Market maker contract
    /// @param fee Market fee
    /// @return Market contract
    function createMarket(Event eventContract, MarketMaker marketMaker, uint24 fee)
        public
        returns (Market market)
    {
        market = new StandardMarket(msg.sender, eventContract, marketMaker, fee);
        MarketCreation(msg.sender, market, eventContract, marketMaker, fee);
    }
}
