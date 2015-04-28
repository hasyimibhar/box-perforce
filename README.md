## Vagrant

```sh
$ vagrant up
```

## Packer

Bake Virtualbox image:

```sh
$ packer build -only=virtualbox-iso template.json
```

Bake EC2 AMI:

```sh
$ packer build -only=amazon-ebs template.json
```

## Terraform

```sh
$ terraform plan
$ terraform apply
```

## Perforce

Start Perforce:

```sh
$ sudo service p4d start

```

Stop Perforce:

```sh
$ sudo service p4d stop

```

Check Perforce status:

```sh
$ p4 info
```
