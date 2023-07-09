# AIron - ChatBot with AI
#### Current version: Preview 1

## About
- AIron is a chatbot developed in Python, using libraries such as TensorFlow and Keras for the creation and training of language models.
- The chatbot is capable of answering questions and providing information based on pre-trained models and specific data.
It is designed to support natural language interactions in Portuguese, allowing users to ask questions and receive relevant responses.
- The chatbot utilizes natural language processing techniques and machine learning models to understand and generate appropriate answers.

## Conversation
```
Usuário: Explica o que foi a guerra fria.
ChatBot: Período de tensões políticas e militares entre os Estados Unidos e a União Soviética que durou aproximadamente de 1947 a 1991 sem confronto direto

Usuário: Explicita-me em que consiste a física de particulas.
ChatBot: A física de partículas estuda as partículas elementares e as interações fundamentais buscando compreender a estrutura básica do universo
```

## Features - Preview 1
- [x] Various areas of knowledge
    - History
    - Portuguese History
    - Capitals
    - Population of Countries
- [x] Interactions


## Updates and More

### Preview 1
- Language: Portuguese
- Basic Models and Data
### More Updates
- More Languages
- Grafical User Interface (GUI) Support
- Better models and data expansion
- Support a pre-trained models - Transformers or BERT
- Docker Support
- Files (.py) to support model training
- Update system

## How To Install and Use
### System Requeriments
> In my tests i'm using:
```
> Processador: Intel Core i3-5005U 2.00GHZ
> GPU: Integrated into the processor
> OS: Windows 10 Pro
> RAM: 8GB
> Disk Space: 2GB

- During Initiation:
    - 370mb RAM
    - 0-15% CPU
- During Use: 
    - 370mb RAM
    - 0-10% (generate answers)
```

```
> Processador: Intel Core i3-5005U 2.00GHZ
> GPU: Integrated into the processor
> OS: Linux based on Debian
> RAM: 8GB
> Disk Space: 2GB

- During Initiation: can reach 450mb RAM
- During Use: 350mb RAM
```

### Installacion

#### Windows (Cmd/Click)
```
>>> start install.bat
OR
Double click in install.bat
```
#### Linux (Terminal)
```
>>> chmod +x install.sh
>>> ./install.sh
```
#### Mac OS
```
I don't use Mac OS, nor have I tested it, but it probably runs.
```

#### Problems while installation
- An error occurred about the nltk library:
```
ERROR:
During handling of the above exception, another exception occurred:
...
Resource ←[93mstopwords←[0m not found.
  Please use the NLTK Downloader to obtain the resource:

  ←[31m>>> import nltk
  >>> nltk.download('stopwords')
  ←[0m
  For more information see: https://www.nltk.org/data.html

  Attempted to load ←[93mcorpora/stopwords←[0m

  Searched in:
  ...
```
- Visit: https://www.nltk.org/nltk_data/ and search 74, "Stopwords Corpus" and download.
- Put "stopwords.zip" in the "corpus" folder in "nltk_data".
- Folder: Directory to put the files in "Searched in".


##### Other problems, contact me for a issue.

## License
- MIT License
- Consult here: https://github.com/gfs0508/AIron/blob/main/LICENSE

## Contributions
- Send a pull request or issue to talk
