# nginx

[![quality](https://img.shields.io/ansible/quality/27910)](https://galaxy.ansible.com/vbotka/nginx)[![Build Status](https://travis-ci.org/vbotka/ansible-nginx.svg?branch=master)](https://travis-ci.org/vbotka/ansible-nginx)

[Ansible role.](https://galaxy.ansible.com/vbotka/nginx/) Install and configure Nginx.

Feel free to [share your feedback and report issues](https://github.com/vbotka/ansible-nginx/issues).

[Contributions are welcome](https://github.com/firstcontributions/first-contributions).


## Requirements

### Roles

- [vbotka.ansible_lib](https://galaxy.ansible.com/vbotka/ansible_lib)
- [jtyr.config_encoder_filters](https://galaxy.ansible.com/jtyr/config_encoder_filters)

### Collections

- community.general


## Variables

Review defaults and examples in vars.


## Workflow

1) Change shell to /bin/sh

```
shell> ansible webserver -e 'ansible_shell_type=csh ansible_shell_executable=/bin/csh' -a 'sudo pw usermod freebsd -s /bin/sh'
```

2) Install the role and collections

```
shell> ansible-galaxy role install vbotka.nginx
shell> ansible-galaxy collection install community.general
```

3) Change variables

- Review *defaults*

- Review OS specific variables in *vars/defaults*

- Optionaly create custom OS specific variables in *vars/*. See *tasks/vars.yml*

- Customize other variables in *vars/main.yml*

- Create host's specific data in *nginx_server_conf_dir*

  - default: "{{ role_path }}/files/servers"
  - See *tasks/conf.yml*, *templates/server.conf.j2* and
  - Filter [encode_nginx](https://github.com/jtyr/ansible-config_encoder_filters#encode_nginx)

4) Create playbook and inventory

```
shell> cat nginx.yml
- hosts: webserver
  roles:
    - vbotka.nginx
```

```
shell> cat hosts
[webserver]
<webserver-ip-or-fqdn>
[webserver:vars]
ansible_connection=ssh
ansible_user=freebsd
ansible_become=yes
ansible_become_method=sudo
ansible_python_interpreter=/usr/local/bin/python3.6
ansible_perl_interpreter=/usr/local/bin/perl
```

5) Install and configure Nginx

```
shell> ansible-playbook nginx.yml
```

6) Test the webserver

   - http://validator.w3.org
   - https://www.ssllabs.com
		

## References

- [nginx.org Documentation](http://nginx.org/en/docs/)
- [nginx.com Wiki](https://www.nginx.com/resources/wiki/)
- [nginx.com Linode Tutorial](https://www.linode.com/docs/web-servers/nginx/)
- [nginx.com Documentation](https://docs.nginx.com/)
- [nginx.com Documentation - Full Example Configuration](https://www.nginx.com/resources/wiki/start/topics/examples/full/)
- [digitalocean.com How to Install Nginx on FreeBSD 11.2](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-freebsd-11-2)
- [digitalocean.com How To Secure Nginx with Let's Encrypt on FreeBSD](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-letsencrypt-freebsd)
- [Config Encoder Filters](https://github.com/jtyr/ansible-config_encoder_filters)
- [FreeBSD Nginx performance](https://devinteske.com/wp/freebsd-nginx-performance/)


## License

[![license](https://img.shields.io/badge/license-BSD-red.svg)](https://www.freebsd.org/doc/en/articles/bsdl-gpl/article.html)


## Author Information

[Vladimir Botka](https://botka.link)
