import json
import numpy as np
import tensorflow as tf
import re
import unidecode
import pickle
import nltk
from nltk.tokenize import word_tokenize
from nltk.corpus import stopwords
from tensorflow.keras.models import load_model

print('\n\nWARNING: AIron is in preview\n\n')

nltk.download('punkt')
nltk.download('wordnet')

try:
    # Carrega os dados do arquivo JSON para cada modelo
    with open('./data/capitals-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_1 = json.load(arquivo_json)

    with open('./data/populacion-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_2 = json.load(arquivo_json)

    with open('./data/history_pt-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_3 = json.load(arquivo_json)

    with open('./data/history-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_4 = json.load(arquivo_json)

    with open('./data/science-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_5 = json.load(arquivo_json)

    with open('./data/about-1a.json', 'r', encoding='utf-8') as arquivo_json:
        data_model_6 = json.load(arquivo_json)

    print("[Load] Data: Success")
except:
    print("[Load] Data: Error")

# Carrega os modelos e os tokenizers
try:
    model_1 = load_model('./models/capitals-1a.h5')

    with open('./models/capitals_T-1a.pkl', 'rb') as f:
        tokenizer_model_1 = pickle.load(f)
        max_len_model_1 = 4

    print("[Load] Model 1 (Capitals): Success")
except Exception as e:
    print("[Load] Model 1 (Capitals): Error", e)

try:
    model_2 = load_model('./models/populacion-1a.h5')

    with open('./models/populacion_T-1a.pkl', 'rb') as f:
        tokenizer_model_2 = pickle.load(f)
        max_len_model_2 = 4

    print("[Load] Model 2 (Populacion): Success")
except Exception as e:
    print("[Load] Model 2 (Populacion): Error", e)

try:
    model_3 = load_model('./models/history_pt-1a.h5')

    with open('./models/history_pt_T-1a.pkl', 'rb') as f:
        tokenizer_model_3 = pickle.load(f)
        max_len_model_3 = 5

    print("[Load] Model 3 (History Pt):  Success")
except Exception as e:
    print("[Load] Model 3 (History Pt): Error", e)

try:
    model_4 = load_model('./models/history-1a.h5')

    with open('./models/history_T-1a.pkl', 'rb') as f:
        tokenizer_model_4 = pickle.load(f)
        max_len_model_4 = 7

    print("[Load] Model 4 (History):  Success")
except Exception as e:
    print("[Load] Model 4 (History): Error", e)

try:
    model_5 = load_model('./models/science-1a.h5')

    with open('./models/science_T-1a.pkl', 'rb') as f:
        tokenizer_model_5 = pickle.load(f)
        max_len_model_5 = 4

    print("[Load] Model 5 (Ciência):  Success")
except Exception as e:
    print("[Load] Model 5 (Ciência): Error", e)

try:
    model_6 = load_model('./models/about-1a.h5')

    with open('./models/about_T-1a.pkl', 'rb') as f:
        tokenizer_model_6 = pickle.load(f)
        max_len_model_6 = 4

    print("[Load] Model 6 (About):  Success")
except Exception as e:
    print("[Load] Model 6 (About): Error", e)

answers_capitals = []
for i in data_model_1:
    answers1 = re.sub(r'[^\w\s]', '', data_model_1[i])
    answers_capitals.append(answers1)

answers_populacion = []
for i in data_model_2:
    answers2 = re.sub(r'[^\w\s]', '', data_model_2[i])
    answers_populacion.append(answers2)

answers_history_pt = []
for i in data_model_3:
    answers3 = re.sub(r'[^\w\s]', '', data_model_3[i])
    answers_history_pt.append(answers3)

answers_history = []
for i in data_model_4:
    answers4 = re.sub(r'[^\w\s]', '', data_model_4[i])
    answers_history.append(answers4)

answers_science = []
for i in data_model_5:
    answers5 = re.sub(r'[^\w\s]', '', data_model_5[i])
    answers_science.append(answers5)

answers_about = []
for i in data_model_6:
    answers6 = re.sub(r'[^\w\s]', '', data_model_6[i])
    answers_about.append(answers6)

def clean_text(text):
    # Remover caracteres especiais e converter para minúsculas
    text = re.sub(r'[^\w\s]', '', text).lower()
    text = unidecode.unidecode(text)

    # Tokenizar o texto em palavras
    words = word_tokenize(text)

    # Remover stopwords
    list_stopwords = set(stopwords.words('portuguese'))
    words_filtered = [word for word in words if word not in list_stopwords]

    # Juntar as palavras filtradas em um texto novamente
    text_clear = ' '.join(words_filtered)

    return text_clear

def answers(question):
    question = re.sub(r'[^\w\s]', '', question).lower()
    question = unidecode.unidecode(question)
    question = clean_text(question)
    answer = ''
    try:
        sequence_1 = tokenizer_model_1.texts_to_sequences([question])
        prevision_1 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_1, maxlen=max_len_model_1, padding='post'))
        result_1 = model_1.predict(prevision_1)[0]
        answer_idx_1 = np.argmax(result_1)
        print("Model 1: Success")
        if result_1[answer_idx_1] > 0.94:
            answer = answers_capitals[answer_idx_1]
            return answer
    except Exception as e:
        print("Model 1: Error ", e)
    
    try:
        sequence_2 = tokenizer_model_2.texts_to_sequences([question])
        prevision_2 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_2, maxlen=max_len_model_2, padding='post'))
        result_2 = model_2.predict(prevision_2)[0]
        answer_idx_2 = np.argmax(result_2)
        print("Model 2: Success")
        if result_2[answer_idx_2] > 0.94:
            answer = answers_populacion[answer_idx_2]
            return answer
    except Exception as e:
        print("Model 2: Error ", e)

    try:
        sequence_3 = tokenizer_model_3.texts_to_sequences([question])
        prevision_3 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_3, maxlen=max_len_model_3, padding='post'))
        result_3 = model_3.predict(prevision_3)[0]
        answer_idx_3 = np.argmax(result_3)
        print("Model 3: Success")
        if result_3[answer_idx_3] > 0.94:
            answer = answers_history_pt[answer_idx_3]
            return answer
    except Exception as e:
        print("Model 3: Error ", e)
    
    try:
        sequence_4 = tokenizer_model_4.texts_to_sequences([question])
        prevision_4 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_4, maxlen=max_len_model_4, padding='post'))
        result_4 = model_4.predict(prevision_4)[0]
        answer_idx_4 = np.argmax(result_4)
        print("Model 4: Success")
        if result_4[answer_idx_4] > 0.94:
            answer = answers_history[answer_idx_4]
            return answer
    except Exception as e:
        print("Model 4: Error ", e)

    try:
        sequence_5 = tokenizer_model_5.texts_to_sequences([question])
        prevision_5 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_5, maxlen=max_len_model_5, padding='post'))
        result_5 = model_5.predict(prevision_5)[0]
        answer_idx_5 = np.argmax(result_5)
        print("Model 5: Success")
        if result_5[answer_idx_5] > 0.97:
            answer = answers_science[answer_idx_5]
            return answer
    except Exception as e:
        print("Model 5: Error ", e)

    try:
        sequence_6 = tokenizer_model_6.texts_to_sequences([question])
        prevision_6 = np.array(tf.keras.preprocessing.sequence.pad_sequences(sequence_6, maxlen=max_len_model_6, padding='post'))
        result_6 = model_6.predict(prevision_6)[0]
        answer_idx_6 = np.argmax(result_6)
        print("Model 6: Success")
        if result_6[answer_idx_6] > 0.97:
            answer = answers_about[answer_idx_6]
            return answer
    except Exception as e:
        print("Model 6: Error ", e)

    if result_5[answer_idx_5] > 0.5:
        if result_5[answer_idx_5] > result_4[answer_idx_4] and result_5[answer_idx_5] > result_3[answer_idx_3] and result_5[answer_idx_5] > result_2[answer_idx_2] and result_5[answer_idx_5] > result_1[answer_idx_1] and result_5[answer_idx_5] > result_6[answer_idx_6]:
            answer = answers_science[answer_idx_5]
            return answer
        
    elif result_4[answer_idx_4] > 0.5:
        if result_4[answer_idx_4] > result_3[answer_idx_3] and result_4[answer_idx_4] > result_5[answer_idx_5] and result_4[answer_idx_4] > result_2[answer_idx_2] and result_4[answer_idx_4] > result_1[answer_idx_1] and result_4[answer_idx_4] > result_6[answer_idx_6]:
            answer = answers_history[answer_idx_4]
            return answer
        
    elif result_3[answer_idx_3] > 0.5:
        if result_3[answer_idx_3] > result_5[answer_idx_5] and result_3[answer_idx_3] > result_4[answer_idx_4] and result_3[answer_idx_3] > result_2[answer_idx_2] and result_3[answer_idx_3] > result_1[answer_idx_1] and result_3[answer_idx_3] > result_6[answer_idx_6]:
            answer = answers_history_pt[answer_idx_3]
            return answer
        
    elif result_2[answer_idx_2] > 0.5:
        if result_2[answer_idx_2] > result_5[answer_idx_5] and result_2[answer_idx_2] > result_4[answer_idx_4] and result_2[answer_idx_2] > result_3[answer_idx_2] and result_2[answer_idx_2] > result_1[answer_idx_1] and result_2[answer_idx_2] > result_6[answer_idx_6]:
            answer = answers_populacion[answer_idx_2]
            return answer

    elif result_1[answer_idx_1] > 0.5:
        if result_1[answer_idx_1] > result_5[answer_idx_5] and result_1[answer_idx_1] > result_4[answer_idx_4] and result_1[answer_idx_1] > result_3[answer_idx_2] and result_1[answer_idx_1] > result_2[answer_idx_2] and result_1[answer_idx_1] > result_6[answer_idx_6] and result_1[answer_idx_1] > 0.98 :
            answer = answers_capitals[answer_idx_1]
            return answer

    if result_6[answer_idx_6] > 0.5:
        if result_6[answer_idx_6] > result_4[answer_idx_4] and result_6[answer_idx_6] > result_3[answer_idx_3] and result_6[answer_idx_6] > result_2[answer_idx_2] and result_6[answer_idx_6] > result_1[answer_idx_1] and result_6[answer_idx_6] > result_5[answer_idx_5]:
            answer = answers_about[answer_idx_6]
            return answer

    else: print("Not Found")

def conversar():
    resposta = answers("")
    while True:
        texto = input("Usuário: ")
        while texto == "":
            texto = input("Usuário: ")
        if texto.lower() == 'sair':
            break
        resposta = answers(texto)
        print("ChatBot: ", resposta)

conversar()
