echo "Finance Data extractor bot"
echo "I am your friendly financial fields extractor agentic AI :) "
echo "=========================="
author="Samarth Jain"
echo "Author: $author"

echo "Enter stock ticker (e.g., AAPL, TSLA, GOOG):"
read ticker


financial_data=$(python3 app.py "$ticker")
response=$(ollama run mistral "Analyse this financial data $financial_data and tell us how it has performed based on the data")
echo "Data extracted $ticker:"
echo "Analysis of previous 20 days"
echo "$response"
echo "$response" >> recent_stock.txt


