# Usando a imagem oficial do NGINX
FROM nginx:latest

# Remover o arquivo de configuração padrão do NGINX
RUN rm /etc/nginx/conf.d/default.conf

# Copiar um arquivo de configuração customizado para o container
COPY ./nginx.conf /etc/nginx/conf.d/

# Copiar os arquivos da aplicação (opcional, se houver uma aplicação)
COPY ./public /usr/share/nginx/html

# Expor a porta que o NGINX vai usar
EXPOSE 80

# Comando para iniciar o NGINX no container
CMD ["nginx", "-g", "daemon off;"]
