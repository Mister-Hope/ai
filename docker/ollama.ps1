# -e OLLAMA_NEW_ENGINE=true
docker run -d --name ollama --restart always --gpus all --add-host=host.docker.internal:host-gateway -e OLLAMA_DEBUG=1 -e OLLAMA_KEEP_ALIVE=-1 -e OLLAMA_CONTEXT_LENGTH=8192 -p 127.0.0.1:11434:11434 -v ollama:/root/.ollama ollama/ollama
