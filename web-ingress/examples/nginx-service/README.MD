## Данный пример демонстрирует работу Kubernetes ingress (кластер запущен в minikube) ##

### Запуск ###
1. Убедитесь, что ingress в minikube подключен

```
# проверка подключенных плагинов
minikube addons list
# активировать ingress
minikube addons enable ingress
```

2. Примените манифест к работающему кластеру
```
kubectl apply -f nginx.yaml
```
### Проверка ###
1. Убедитесь, что сервис ClusterIP создан
```
kubectl get svc
```
2. Убедитесь что ingress получил адрес (адрес должен быть присвоен в поле ADDRESS)
```
kubectl get ing
```
Для проверки работоспособности ingress используйте один из двух вариантов передачи header
с "доменным именем" вашего приложения
1. Передайте header с необходимым именем при http-запросе
```
curl --header "Host: web1.app" http://$(minikube ip)/web
```
2. Или добавьте в /etc/hosts резолв для "доменного имени" вашего приложения и используйте для проверки полную ссылку
```
echo "$(minikube ip) web1.app" >> /etc/hosts

curl http://web1.app/web
```

Также можно использовать для аутентификации Basic пример из следующей статьи:
https://kubernetes.github.io/ingress-nginx/examples/auth/basic
