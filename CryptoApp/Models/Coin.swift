//
//  Coin.swift
//  CryptoApp
//
//  Created by Harun Gunes on 21/11/2022.
//

/*
 JSON response:
 
 [
 {
 "id": "bitcoin",
 "symbol": "btc",
 "name": "Bitcoin",
 "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
 "current_price": 74104,
 "market_cap": 1423994484008,
 "market_cap_rank": 1,
 "fully_diluted_valuation": 1556447256104,
 "total_volume": 70691149806,
 "high_24h": 76223,
 "low_24h": 74024,
 "price_change_24h": -1970.594940963725,
 "price_change_percentage_24h": -2.59036,
 "market_cap_change_24h": -37634631594.01245,
 "market_cap_change_percentage_24h": -2.57484,
 "circulating_supply": 19212912,
 "total_supply": 21000000,
 "max_supply": 21000000,
 "ath": 275506,
 "ath_change_percentage": -73.12918,
 "ath_date": "2021-11-10T14:24:11.849Z",
 "atl": 220.11,
 "atl_change_percentage": 33533.26961,
 "atl_date": "2013-07-05T00:00:00.000Z",
 "roi": null,
 "last_updated": "2022-11-20T23:44:31.152Z",
 "sparkline_in_7d": {
 "price": [
 16541.814419337577,
 16506.907331643964,
 ]
 },
 "price_change_percentage_24h_in_currency": -2.590357326449068
 }
 ]
 */

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Coin: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H, marketCapChange24H, marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    func coinFactory(amount: Double) -> Coin {
        Coin(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingsValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

// MARK: - SparklineIn7D
struct SparklineIn7D: Codable {
    let price: [Double]?
}

