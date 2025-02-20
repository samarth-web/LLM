echo "Financial AI Assistant"
echo "Enter stock ticker (e.g., AAPL, TSLA, GOOG):"
read ticker
response=$(ollama run mistral "Summarize the latest earnings report for $ticker.")
echo "Financial Summary for $ticker:"
echo "$response"

# Save response to a file
echo "$response" > "summaries/$ticker-summary.txt"
