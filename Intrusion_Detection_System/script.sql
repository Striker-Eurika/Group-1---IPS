CREATE DATABASE IF NOT EXISTS intrusion_db;

USE intrusion_db;

CREATE TABLE attack(
	attack_id INT PRIMARY KEY,
	attack_type VARCHAR(64)
);

CREATE TABLE intrusion(
	intrusion_id INT AUTO_INCREMENT PRIMARY KEY,
	attack_id INT,
	time_of_detection DATETIME DEFAULT NOW(),
	FOREIGN KEY (attack_id) REFERENCES attack(attack_id)
);

INSERT INTO attack(attack_id, attack_type) VALUES
	(1, 'DDoS'),
	(2, 'PortScan'),
	(3, 'Bot'),
	(4, 'Infiltration'),
	(5, 'Brute Force'),
	(6, 'XSS'),
	(7, 'Sql Injection'),
	(8, 'FTP-Patator'),
	(9, 'SSH-Patator'),
	(10, 'DoS slowloris'),
	(11, 'DoS Slowhttptest'),
	(12, 'DoS Hulk'),
	(13, 'DoS GoldenEye'),
	(14, 'Heartbleed');

CREATE TABLE detail(
	intrusion_id INT PRIMARY KEY,
	dst_port INT,
	flow_duration INT,
	total_fwd_packets INT,
	total_bwd_packets INT,
	total_length_of_fwd_packet FLOAT,
	total_length_of_bwd_packet FLOAT,
	fwd_packet_length_max FLOAT,
	fwd_packet_length_min FLOAT,
	fwd_packet_length_mean FLOAT,
	fwd_packet_length_std FLOAT,
	bwd_packet_length_max FLOAT,
	bwd_packet_length_min FLOAT,
	bwd_packet_length_mean FLOAT,
	bwd_packet_length_std FLOAT,
	flow_bytes FLOAT,
	flow_Packets FLOAT,
	flow_iat_mean FLOAT,
	flow_iat_std FLOAT,
	flow_iat_max FLOAT,
	flow_iat_min FLOAT,
	fwd_iat_total FLOAT,
	fwd_iat_mean FLOAT,
	fwd_iat_std FLOAT,
	fwd_iat_max FLOAT,
	fwd_iat_min FLOAT,
	bwd_iat_total FLOAT,
	bwd_iat_mean FLOAT,
	bwd_iat_std FLOAT,
	bwd_iat_max FLOAT,
	bwd_iat_min FLOAT,
	fwd_psh_flags INT,
	bwd_psh_flags INT,
	fwd_urg_flags INT,
	bwd_urg_flags INT,
	fwd_header_length INT,
	bwd_header_length INT,
	fwd_packets FLOAT,
	bwd_Packets FLOAT,
	packet_length_min FLOAT,
	packet_length_max FLOAT,
	packet_length_mean FLOAT,
	packet_length_std FLOAT,
	packet_length_variance FLOAT,
	fin_flag_count INT,
	syn_flag_count INT,
	rst_flag_count INT,
	psh_flag_count INT,
	ack_flag_count INT,
	urg_flag_count INT,
	cwr_flag_count INT,
	ece_flag_count INT,
	down_up_ratio FLOAT,
	average_packet_size FLOAT,
	fwd_segment_size_avg FLOAT,
	bwd_segment_size_avg FLOAT,
	fwd_bytes_bulk_avg INT,
	fwd_packet_bulk_avg INT,
	fwd_bulk_rate_avg INT,
	bwd_bytes_bulk_avg INT,
	bwd_packet_bulk_avg INT,
	bwd_bulk_rate_avg INT,
	subflow_fwd_packets INT,
	subflow_fwd_bytes INT,
	subflow_bwd_packets INT,
	subflow_bwd_bytes INT,
	fwd_init_win_bytes INT,
	bwd_init_win_bytes INT,
	fwd_act_data_pkts INT,
	fwd_seg_size_min INT,
	active_mean FLOAT,
	active_std FLOAT,
	active_max FLOAT,
	active_min FLOAT,
	idle_mean FLOAT,
	idle_std FLOAT,
	idle_max FLOAT,
	idle_min FLOAT,
	FOREIGN KEY (intrusion_id) REFERENCES intrusion(intrusion_id)
);
