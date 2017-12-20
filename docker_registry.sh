# docker tag <イメージ名>:<tag> <レジストリのIP>:<ポート>/<任意のリポジトリ名>/<イメージ名>:<tag>
# docker push <ip>:<port>/<registory-name>/<image-name>:<tag> 

docker pull registry:2.3.0

docker run -d -p 5000:5000 \
	-v /var/opt:/var/lib/registry \
        -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
        -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
        -v $(pwd)/certs:/certs \
	registry:2.3.0


#docker run -d -p 5000:5000 \
	#-v /var/opt:/var/lib/registry \
        #-e "REGISTRY_AUTH=htpasswd" \
        #-e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
        #-e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
        #-e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
        #-e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
        #-v $(pwd)/certs:/certs \
	#-v $(pwd)/auth:/auth \
	#registry:2.3.0
