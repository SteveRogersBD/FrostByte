<p align="center">
  <img src="plateit_banner.png" alt="PlateIt Hero Banner" height="400" width="400">
</p>

# PlateIt 🍽️ - The Multimodal AI Culinary Orchestrator

[![Platform](https://img.shields.io/badge/Platform-Android-green.svg)](https://developer.android.com)
[![Backend](https://img.shields.io/badge/Backend-FastAPI-blue.svg)](https://fastapi.tiangolo.com/)
[![AI Engine](https://img.shields.io/badge/Powered%20By-Google%20Gemini%203-orange.svg)](https://deepmind.google/technologies/gemini/)

**PlateIt** is a state-of-the-art AI-powered culinary assistant that bridges the gap between digital inspiration (YouTube, TikTok, Instagram) and real-world results. Built with **Google Gemini 3.0 Flash Preview** as its central brain, PlateIt "watches" videos, "sees" your pantry, and guides you through cooking with a professional AI sous-chef in your ear.

---

## 🚩 The Problem
Every day, we save countless cooking videos from YouTube, TikTok, and Instagram, yet most of them are never cooked. The process of manually transcribing steps, checking the fridge, and making shopping lists is too tedious. Home cooks lose their "culinary spark" in the friction of organization and the chaos of messy kitchens.

## ✨ The Solution Created
PlateIt removes the friction from "Watch" to "Cook." By leveraging the multimodal power of **Gemini 3**, we created a unified "Culinary Brain" that:
1. **Native Video Understanding**: Extracts structured recipes from unstructured social media clips without needing manual transcription.
2. **Visual Inventory**: Syncs with your physical pantry via a single photo, Identifying ingredients instantly to prevent food waste.
3. **Live AI Guidance**: Provides a context-aware cooking partner that knows exactly where you are in a recipe, offering substitutions and tips in real-time.

---

## 🌟 Key Features

- **🎥 Video-to-Recipe Extraction**: Paste any cooking video link (YouTube, TikTok, Instagram, Twitter). Our agent natively understands the video to extract a full, structured recipe card.
- **🖼️ Vision-Powered Pantry**: Snap a photo of your fridge; Gemini identifies every ingredient and updates your inventory automatically.
- **🤖 Gemini-Orchestrated Chat**: Real-time culinary guidance using voice, text, or images. Ask for substitute advice or "how-to" tips while your hands are messy.
- **🛒 Dynamic Shopping Lists**: Automatically identifies missing ingredients for a recipe and adds them to a categorized grocery list.
- **🍳 Professional Cooking Mode**: Step-by-step instruction with an immersive UI, timers, and integrated AI assistant.
- **💎 Premium Experience**: Integrated with **RevenueCat** for seamless access to professional features.

---

## 🛠️ Tech Stack

### Mobile App (Android)
- **Framework**: Native Android (Java) with Material 3 Design.
- **Networking**: Retrofit2 + OkHttp3 (Optimized for long-polling AI tasks).
- **Image Processing**: Picasso for smooth ingredient and step visualization.
- **Monetization**: RevenueCat SDK for subscription management.
- **Animation**: Lottie for an interactive, fluid UI experience.

### Backend API (The "Brain")
- **Core**: FastAPI (Python 3.12) - High-performance asynchronous API layer.
- **Orchestration**: LangGraph (Advanced State Machines) for agentic workflows.
- **Multimodal Engine**: **Google Gemini 3 Flash Preview** (Vision & Video Understanding).
- **Worker Logic**: GPT-4o (High-precision structured data) & GPT-4o-mini (Text refinement).
- **Database**: Supabase (PostgreSQL with SQLModel ORM).
- **Deployment**: Google Cloud Run (Dockerized) with GitHub Actions CI/CD.

---

## 🏗️ Architecture & Implementation

PlateIt is built on a modular architecture that separates the intelligence layer from the presentation layer. For detailed breakdowns, please refer to:

- **[Backend Architecture & ER Diagrams](./BackEnd/README.md)**: Deep dive into the database schema, API routing, and system design.
- **[Agent Workflow & Intelligence](./BackEnd/Agent/README.md)**: Explore the LangGraph state machines, the "Better Agent" workflow, and the toolsets powering the AI Chef.

---

## 🚀 Installation Guide

### 📱 Android Studio (Mobile Client)
Follow these steps to set up the PlateIt app on your local development environment:

1. **Prerequisites**:
   - **Android Studio Koala (2024.1.1)** or newer.
   - **Java 17** (Standard for modern Android development).
   - An Android device or Emulator (API Level 24+).

2. **Clone the Project**:
   ```bash
   git clone https://github.com/SteveRogersBD/PlateIt.git
   ```

3. **Open in Android Studio**:
   - Launch Android Studio and select **File > Open**.
   - Navigate to the root `PlateIt` folder.
   - Wait for the **Gradle Sync** to complete.

4. **Add Local Configuration**:
   - Locate `local.properties` in your root project folder.
   - Add your SerpAPI key (used for search fallbacks):
     ```properties
     SERP_API_KEY=your_serp_api_key_here
     ```

5. **Run**:
   - Select your target device and click the **Run** (Green Play) button.

### 🐍 Backend Intelligence Layer
To host the "Brain" locally:

1. **Environment Config**:
   Navigate to `BackEnd/Agent/` and create a `.env` file with your Gemini and OpenAI keys (see documentation in the Agent folder).

2. **Launch**:
   ```bash
   cd BackEnd/Agent
   pip install -r requirements.txt
   uvicorn agent_server:app --host 0.0.0.0 --port 8080
   ```

---

## 🤖 Why Gemini 3?
We chose **Gemini 3.0 Flash Preview** as the heart of PlateIt because its native multimodal capabilities solve the hardest problem in cooking: **Understanding Context**. Whether it's "watching" a messy cooking video to extract steps or "seeing" ingredients in a cluttered fridge, Gemini's superior reasoning and massive context window make it the only model capable of powering a true digital sous-chef.

---

<p align="center">
  Built for the <b>Google Gemini API Developer Competition</b> 🚀
</p>

---

<p align="center">
  Made with ❤️ by <a href="https://github.com/SteveRogersBD">SteveRogersBD</a>
</p>

