//
//  CoinRowView.swift
//  CryptoApp
//
//  Created by Harun Gunes on 21/11/2022.
//

import SwiftUI

struct CoinCell: View {
    
    let showHoldingValue: Bool
    let coin: Coin
    
    var body: some View {
        HStack(spacing: 0) {
            
            leftColumn
            
            Spacer()
            
            if showHoldingValue {
                middleColumn
            }
           
            rightColumn
            
        }
        .font(.subheadline)
    }
}

struct CoinCell_Previews: PreviewProvider {
    static var previews: some View {
        CoinCell(showHoldingValue: true, coin: dev.coin)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}

extension CoinCell {
    
    private var leftColumn: some View {
        HStack {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            Text("\(coin.symbol.uppercased())")
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var middleColumn: some View {
        VStack(alignment: .trailing) {
            
            Text(coin.currentHoldingsValue.currencyFormatToString())
            Text((coin.currentHoldings ?? 0).currencyToString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing) {
        
            Text("\(coin.currentPrice.currencyFormatToString())")
                .bold()
                .foregroundColor(Color.theme.accent)
        
            Text(coin.priceChangePercentage24H?.percentToString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ?
                    Color.theme.green :
                    Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.size.width / 3.5, alignment: .trailing)
    }
}
