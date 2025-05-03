# Usar a imagem oficial do Nginx como base
FROM nginx:alpine

# Remover a configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copiar sua própria configuração do Nginx (opcional, mas recomendado para customização)
# COPY nginx.conf /etc/nginx/conf.d/default.conf 

# Copiar os arquivos do seu site (HTML, CSS, JS) para o diretório padrão do Nginx
COPY ./ /usr/share/nginx/html

# Expor a porta 80 (porta padrão do Nginx)
EXPOSE 80

# Comando para iniciar o Nginx quando o container rodar
CMD ["nginx", "-g", "daemon off;"] 