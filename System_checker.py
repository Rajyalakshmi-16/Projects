# -*- coding: utf-8 -*-
"""Untitled0.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1ZFRUgBSCqNIx1u5QuUfVQt5OqucTrY5b
"""

import pandas as pd
import numpy as np
import spacy
from sklearn.ensemble import RandomForestClassifier
import joblib

# Load NLP model
nlp = spacy.load("en_core_web_sm")

# Load dataset
df = pd.read_csv("/content/syditriage.csv")
from sklearn.preprocessing import LabelEncoder
le=LabelEncoder()
df['symptom']=le.fit_transform(df['symptom'])
# Prepare data
X = df.drop(columns=['disease'])
y = df['disease']

# Train model
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X, y)

# Save model
joblib.dump(model, "health_model.pkl")

# Function to analyze symptoms
def analyze_symptoms(user_input):
    doc = nlp(user_input)
    symptoms = [token.text.lower() for token in doc if token.is_alpha]

    # Create symptom array
    user_symptoms = np.zeros(len(X.columns))

    for symptom in symptoms:
        if symptom in X.columns:
            user_symptoms[X.columns.get_loc(symptom)] = 1

    # Make prediction
    prediction = model.predict([user_symptoms])[0]
    return prediction

# Test the function
user_input = "I have fever and cough"
print("Predicted Disease:", analyze_symptoms(user_input))

