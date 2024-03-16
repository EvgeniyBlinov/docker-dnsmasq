[![MIT License][license-image]][license-url]

# docker-dnsmasq

### Start

```
cp dnsmasq.conf.dist dnsmasq.conf
docker-compose up -d
```


### Reload config

```
docker-compose kill --signal=SIGHUP dnsmasq
```

### Usage

```
nslookup -port=32053 some.lan 127.0.0.1

dig -p 32053 some.lan @127.0.0.1  +noall +answer
```

## License

[![MIT License][license-image]][license-url]

## Author

- [Blinov Evgeniy](mailto:evgeniy_blinov@mail.ru) ([https://evgeniyblinov.ru/](https://evgeniyblinov.ru/))

[license-image]: http://img.shields.io/badge/license-MIT-blue.svg?style=flat
[license-url]: LICENSE
