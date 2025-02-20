
echo "Financial AI Summarizer"
echo "Enter financial news or report text:"
read user_input
ollama run mistral "$user_input"

