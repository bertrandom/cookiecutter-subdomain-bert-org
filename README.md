# cookiecutter-subdomain-bert-org

Scripts for provisioning a new static subdomain on bert.org using the wildcard certificate

Basically:

* Creates a new directory for the subdomain locally with a blank index file
* Creates a new directory on the remote and rsyncs the blank index file
* Creates two Apache configurations for the new subdomain, one that forces a redirect from http://subdomain.bert.org to https://subdomain.bert.org and one that is the actual configuration
* Reloads Apache

## installation

Install [cookiecutter](https://github.com/cookiecutter/cookiecutter)

Clone into `~/code/cookiecutter-subdomain-bert-org`

Symlink into ~/bin directory:

```
ln -s /Users/bertrand/code/cookiecutter-subdomain-bert-org/static.sh ~/bin/static
```

Then type:
```
static subdomain
```

Where subdomain is the subdomain in subdomain.bert.org to provision
