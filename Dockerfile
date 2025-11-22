# Usar nginx como servidor web
FROM nginx:alpine

# Copiar o relatório HTML para o diretório padrão do nginx
COPY index.html /usr/share/nginx/html/index.html

# Expor porta 80
EXPOSE 80

# Nginx já roda automaticamente quando o container inicia
CMD ["nginx", "-g", "daemon off;"]
