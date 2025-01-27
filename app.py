import streamlit as st
from langchain_helper import get_few_shot_db_chain

# Page Title
st.title("T Shirts 👕 Enquiry (Q&A)")

# Initialize session state for history
if "history" not in st.session_state:
    st.session_state.history = []

question = st.text_input("Please Ask Your Question: ")

# @st.cache_resource
# def get_cached_chain():
#     return get_few_shot_db_chain()

if question:
    # Get the answer from the chain
    chain = get_few_shot_db_chain()
    response = chain.run(question)

    # Save the question and answer to session state
    st.session_state.history.append({"question": question, "answer": response})

    st.header("Answer")
    st.write(response)

# Display Question-Answer History
if st.session_state.history:
    st.divider()
    st.header("History")
    for entry in st.session_state.history:
        st.write(f"**Question:** {entry['question']}")
        st.write(f"**Answer:** {entry['answer']}")
        st.markdown("---")  # Faint line




