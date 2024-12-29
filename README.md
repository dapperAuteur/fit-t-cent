# Fit T. Cent: Your Personal Fitness AI Assistant

> **Important Note**: This tool is for **ENTERTAINMENT PURPOSES ONLY**. Always consult healthcare and fitness professionals before making changes to your lifestyle.
> You'll need to feed data into the tool after launching it.

## What is Fit T. Cent?

Fit T. Cent is an AI-powered fitness assistant that helps answer questions about fitness, wellness, and nutrition. Think of it as a smart study buddy that can help you learn about staying healthy!

![Fit T. Cent](assets/Fit T Cent RAG Thumbnail.png)

## Quick Start Guide

### What You'll Need
- A computer with:
  - At least 16GB of memory (RAM)
  - 50GB of free storage space
  - Windows, Mac, or Linux operating system
- Basic knowledge of using your computer's terminal/command prompt

### Installation Steps

1. **Install Docker**
   - Go to [Docker's website](https://www.docker.com/products/docker-desktop/)
   - Download Docker Desktop for your computer
   - Install and start Docker Desktop
   - Wait for the whale icon to appear in your taskbar

2. **Set Up Weaviate**
   - Open your terminal/command prompt
   - Copy and paste this command:
     ```bash
     docker pull semitechnologies/weaviate
     ```
   - Then run:
     ```bash
     docker run -d -p 8080:8080 semitechnologies/weaviate
     ```

3. **Install Verba**
   - Open your terminal/command prompt
   - Create a new folder for your project:
     ```bash
     mkdir fit-t-cent
     cd fit-t-cent
     ```
   - Set up Python environment:
     ```bash
     python3 -m venv venv
     source venv/bin/activate  # On Windows use: venv\Scripts\activate
     ```
   - Install Verba:
     ```bash
     pip install goldenverba
     ```

4. **Install Ollama**
   - Visit [Ollama's website](https://ollama.com)
   - Download and install Ollama for your system
   - Follow the installation wizard

5. **Connect Everything Together**
   - Create a file named `.env` in your project folder
   - Copy this content into the file:
     ```
     OLLAMA_MODEL=llama3.2:latest
     OLLAMA_EMBED_MODEL=snowflake-arctic-embed
     OLLAMA_URL=http://localhost:11434
     WEAVIATE_PORT=8081
     WEAVIATE_URL_VERBA=http://localhost:8080
     ```

### Starting Fit T. Cent

1. Open your terminal/command prompt
2. Go to your project folder
3. Type: `verba start`
4. Open your web browser
5. Go to: `http://localhost:8000`

## Features

- Ask questions about fitness and wellness
- Get evidence-based answers
- Easy-to-use web interface
- Privacy-focused (runs on your computer)

## Frequently Asked Questions

**Q: Can I share this with others?**
A: This tool is for personal use only. I built it using proprietary content that cannot be shared publicly. You'll need to feed the tool content for it to respond.

**Q: Is this medical advice?**
A: No! This is for entertainment and learning purposes only. Always consult healthcare professionals for medical advice.

**Q: What if something doesn't work?**
A: Check our troubleshooting guide below or reach out for help through our support channels.

## Troubleshooting

If you run into problems:

1. Make sure Docker is running (look for the whale icon)
2. Check that all commands completed without errors
3. Ensure your computer meets the minimum requirements
4. Try restarting Docker Desktop
5. Make sure no other programs are using the required ports (8080, 8081, 11434)

## Getting Help

Need assistance? Here's how to get help:

- Check the [Troubleshooting Guide](#troubleshooting)
- Visit the Weaviate [Support Forum](https://forum.weaviate.io/)
- Chat: [Real-Time Chat with me at AwesomeWebStore.com](AwesomeWebStore.com)

## For Developers

### Technical Details

- Built with open-source tools:
  - [Weaviate](https://weaviate.io/) (vector database)
  - [Verba](https://verba.weaviate.io/) (user interface)
  - [Ollama](https://ollama.com/) (local AI model)

### API Documentation

Weaviate's Detailed API documentation is available in the [API Guide](https://weaviate.io/developers/weaviate).

### Contributing

We welcome contributions! Please read our [Contributing Guide](CONTRIBUTING.md) first.

## License

This project is for personal use only. The knowledge base contains proprietary content that cannot be redistributed.

## Acknowledgments

Special thanks to:
- [National Academy of Sports Medicine](https://www.nasm.org/) (NASM) for their curriculum
- The open-source community for the amazing tools
- All contributors and testers

---

Made with ❤️ by [BAM](https://brandanthonymcdonald.com/)