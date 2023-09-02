-- Inserts de dados em E-Commerce


use ecommerce;
show tables;
insert into cliente (Fnome, MNome,Lnome, CPF, Telefone1, Telefone2, Email)
	values('vedita', 'kakaroto','dragon', '12345667810', '32324545', '3245324546', 'vedita.k@hotmail.com'),
		  ('zeze', 'filomeno','alcantara', '98778956712', '32322121', '32322123', 'zeze@gmail.com'),
          ('antonino', 'Silva','albuquerque','32145678910', '32326667', '981121234', 'tonino@gmail.com'),
          ('Marilena', 'chaui', 'Santana', '67845634512', '8898121312', '989818112', 'chaui@hotmail.com'),
          ('Alzimara', 'Lupita','Santos', '76879812312', '32321213', '32322121', 'alzi@gmail.com'),
          ('Marina', 'Silva', 'Soares', '67895735612', '32321256', '98989123412', 'silva@gmail.com'),
          ('Sales', 'Jesus', 'natan', '12365478945', '32324576','323211111 ','sales@hotmail.com'),
		  ('Josenildo', 'Passarinho','Da luz', '00167845623', '32288990', '32280065', 'daluz@outlook.com');
