
myipvar97=$(ip addr show dev eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(?=\/)');

#sudo  docker rmi `docker images -q` &



sudo bash -c "su -;

ip link add link eth0 name eth0.51 type vlan id 51;
ip link set eth0.51 up;
ip address add 192.168.2.244/24 dev eth0.51;
mkdir -pv /path/to;
python3 -m venv /path/to/venv;
source /path/to/venv/bin/activate;
pip install --upgrade pip  ;\
pip install 'ansible>=4,<6';
pip install git+https://opendev.org/openstack/kolla-ansible@stable/yoga;

mkdir -p /etc/kolla;
chown 0:0 /etc/kolla;
ls -al /etc/kolla;

cp -r /path/to/venv/share/kolla-ansible/etc_examples/kolla/* /etc/kolla/;

cd /root;
cp /path/to/venv/share/kolla-ansible/ansible/inventory/* .

#cat  /path/to/venv/share/kolla-ansible/requirements.yml ;

kolla-ansible install-deps;


mkdir /etc/ansible;
echo '[defaults]
host_key_checking=False
pipelining=True
forks=100' > /etc/ansible/ansible.cfg;  ls -al  /etc/ansible;


echo 'localhost ansible_python_interpreter=python'  >all2;
cat all-in-one >> all2;

ansible -i all2 all -m ping;\
kolla-genpwd;\
cp /etc/kolla/globals.yml /etc/kolla/globals.yml.bak;

#sed -i 's/^keystone_admin_password.*/keystone_admin_password: 123456/' /etc/kolla/passwords.yml;


myipvar97=$(ip addr show dev eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}|\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}(?=\/)');
echo \"${myipvar97}\";
cat <<EOF>/etc/kolla/globals.yml
kolla_base_distro: \"ubuntu\"
kolla_install_type: \"binary\"
#openstack_release: \"yoga\"
network_interface: \"eth0\"
kolla_internal_address: \"${myipvar97}\"
neutron_external_interface: \"eth0.51\"
enable_haproxy: \"no\"
EOF

cat /etc/kolla/globals.yml;
cd /root;
pip install python-openstackclient -c https://releases.openstack.org/constraints/upper/yoga &
cd /root;
#kolla-ansible install-deps;
#kolla-ansible -i ./all2 bootstrap-servers &&kolla-ansible -i ./all2 prechecks && kolla-ansible -i ./all2 pull &&kolla-ansible -i ./all2 deploy &&kolla-ansible -i ./all2 post-deploy;

"&