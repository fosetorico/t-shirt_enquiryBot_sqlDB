# AI-Powered T-Shirt Enquiry Bot
#### Link: https://huggingface.co/spaces/valleeneutral/t-shirts_enquiry_db

This project is an AI-driven chatbot that allows users to query t-shirt inventory stored in an SQL database. It leverages Hugging Face Embeddings, ChromaDB for vector storage, and Few-Shot Learning to provide accurate, context-aware responses to user queries.

## Features
1. SQL Database Integration – Retrieves real-time inventory data.
2. AI-Powered Chatbot – Uses NLP to understand user queries.
3. Hugging Face Embeddings – Enhances natural language understanding.
4. ChromaDB Vector Storage – Improves response accuracy and retrieval.
5. Few-Shot Learning – Boosts contextual awareness and chatbot intelligence.

## Steps to run this Project

#### 1. Clone the repository
```
git clone https://github.com/fosetorico/t-shirt_enquiryBot_sqlDB.git
```

#### 2. Create a conda environment after opening the repository
```
conda create -n your-chosen-name python=3.10 -y
```

```
conda activate your-chosen-name
```

#### 3. Rename the '.env.example' file to '.env' and insert your OpenAI key and SQL key

#### 4. Install the requirements
```
pip install -r requirements.txt
```

#### 5. Finally run the following command
```
streamlit run app.py