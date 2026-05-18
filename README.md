# AI BDD Test Case Generator 🤖

An AI-powered Test Case Generator using **LangChain + Ollama + Python**.

Converts plain-English user stories into structured **Gherkin BDD test cases** — runs 100% locally. No API key. No cost.

---

## Project Overview

This project demonstrates how to build an AI-powered Test Case Generator using LangChain, Ollama LLMs, and Python. The system converts user stories into structured BDD-style test cases (Gherkin format), including positive, negative, edge cases, and UI/UX scenarios.

---

## Folder Structure

```
ai-bdd-generator/
├── README.md
├── requirements.txt
├── .gitignore
├── ai_bdd_generator.ipynb
└── outputs/
    └── bdd_tests.feature
```

---

## Setup & Installation Steps

### 1. Install Required Tools
- [Ollama](https://ollama.com/download)
- [Python 3.11](https://www.python.org/downloads/release/python-3119/)
- [Visual Studio Code](https://code.visualstudio.com/)

### 2. Setup VS Code
- Open VS Code
- Install the **Jupyter Extension**

### 3. Pull Ollama Models
```bash
ollama pull qwen2.5-coder
ollama pull llama3:8b-instruct-q4_K_M
ollama pull mistral
```

Verify:
```bash
ollama list
```

### 4. Start Ollama Server
```bash
ollama serve
```
Visit `http://localhost:11434` → should show **Ollama is running**

### 5. Create Project Environment
```bash
mkdir ai-bdd-generator
cd ai-bdd-generator
py -3.11 -m venv .venv
```

Activate:
```bash
# Windows
.venv\Scripts\Activate.ps1

# Mac/Linux
source .venv/bin/activate
```

### 6. Install Required Packages

Inside Jupyter Notebook Cell 1:
```python
import subprocess, sys

packages = [
    "langchain==0.3.25",
    "langchain-core==0.3.60",
    "langchain-community==0.3.24",
    "langchain-ollama==0.3.3",
    "langchainhub==0.1.21",
]
for pkg in packages:
    subprocess.check_call([sys.executable, "-m", "pip", "install", pkg, "-q"])

print("✅ All packages installed!")
```

### 7. Verify Versions
```python
import langchain, langchain_core, langchain_ollama

print("langchain      :", langchain.__version__)         # 0.3.25
print("langchain-core :", langchain_core.__version__)    # 0.3.60
print("langchain-ollama:", langchain_ollama.__version__) # 0.3.3
```

---

## Core Implementation

```python
from langchain_ollama import ChatOllama
from langchain_core.prompts import PromptTemplate

tc_llm = ChatOllama(
    base_url="http://localhost:11434",
    model="qwen2.5-coder",
    temperature=0.3,
)

def generate_test_cases(user_story: str) -> str:
    template = """You are a QA Automation Engineer.
    Convert the user story into 10+ Gherkin BDD test cases.
    Include Happy Path, Negative, Edge Case, UI/UX, Security scenarios.
    User Story: {user_story}"""
    chain = PromptTemplate.from_template(template) | tc_llm
    return chain.invoke({"user_story": user_story}).content

user_story = """
As a finance user, I want to navigate to the Payment Traceability screen
from the FMC tab so that I can trace payment details efficiently.
"""

output = generate_test_cases(user_story)
print(output)
```

---

## Models Used

| Model | Size | Purpose |
|---|---|---|
| qwen2.5-coder | 4.7 GB | BDD test case generation |
| llama3:8b-instruct-q4_K_M | 4.9 GB | Agent reasoning |
| mistral | 4.4 GB | Fast general purpose |

---

## Why Exact Package Versions?

| Package | Version | Reason |
|---|---|---|
| langchain | 0.3.25 | create_react_agent works here |
| langchain-core | 0.3.60 | Compatible with langchain-ollama |
| langchain-ollama | 0.3.3 | Connects properly to Ollama |
| langchain-community | 0.3.24 | Extra tools support |
| langchainhub | 0.1.21 | ReAct prompt support |

---

## Troubleshooting

| Error | Fix |
|---|---|
| `ModuleNotFoundError: langchain_ollama` | `pip install langchain-ollama==0.3.3` |
| `ImportError: create_react_agent` | `pip install langchain==0.3.25` |
| `model not found` | `ollama pull qwen2.5-coder` |
| `localhost:11434 not reachable` | Run `ollama serve` in terminal |
| Slow first run | Normal — model loads into RAM. Next run faster |

---

## Author
Built by QA / Automation Team using LangChain + Ollama + Python.
