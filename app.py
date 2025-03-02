import yfinance as yf
import datetime
import sys
code = sys.argv[1]
stock = yf.Ticker(code)
today = datetime.datetime.today().strftime('%Y-%m-%d')
historic = stock.history(period="20d", interval="1d")  
print(historic)